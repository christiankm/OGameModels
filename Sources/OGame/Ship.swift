//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol Ship: Unit, Buildable, FixedPriceable, Identifiable, Hashable, CustomStringConvertible {

    var id: GameId { get }
    var name: String { get }
    var requirements: [Requirement] { get }

    /// The drives the ship can fly with, starting with the one it's first built with. Empty for ships that can't fly.
    var drives: [ShipDrive] { get }

    var baseShieldPower: Int { get }
    var baseWeaponPower: Int { get }
    var baseCargoCapacity: Int { get }
    var isCombatShip: Bool { get }

    /// The number of shots the ship gets against each unit, keyed by the unit's ID.
    var rapidfire: [GameId: Int] { get }
}

// MARK: Combat

extension Ship {

    /// The number of shots each ship has against this ship, keyed by the attacking ship's ID.
    public var rapidfireFrom: [GameId: Int] {
        ShipType.allCases.reduce(into: [:]) { rapidfireFrom, shipType in
            if let shots = shipType.ship.rapidfire[id] {
                rapidfireFrom[shipType.id] = shots
            }
        }
    }

    /// Shield power after the shielding technology bonus of 10% per level.
    public func shieldPower(shieldingTechnology: Level) -> Int {
        baseShieldPower * (10 + shieldingTechnology) / 10
    }

    /// Weapon power after the weapons technology bonus of 10% per level.
    public func weaponPower(weaponsTechnology: Level) -> Int {
        baseWeaponPower * (10 + weaponsTechnology) / 10
    }
}

// MARK: Flight

extension Ship {

    /// The drive the ship flies with at the given research levels.
    ///
    /// A ship switches to a better drive once that drive's research reaches the drive's minimum level,
    /// and otherwise flies with the drive it was built with.
    public func drive(for driveLevels: DriveLevels) -> ShipDrive? {
        drives.last { driveLevels.level(of: $0.drive) >= $0.minimumLevel } ?? drives.first
    }

    /// The speed of the ship, including the drive research bonus and the Collector or General class bonus.
    public func speed(driveLevels: DriveLevels, characterClass: CharacterClass = .notSelected) -> Int {
        guard let drive = drive(for: driveLevels) else { return 0 }

        let level = driveLevels.level(of: drive.drive)
        var speed = drive.baseSpeed + drive.baseSpeed * drive.drive.speedIncreasePerLevel * level / 100

        if characterClass.isCollector, isCargoShip {
            speed += drive.baseSpeed
        } else if characterClass.isGeneral, isRecycler || isCombatShip, !isDeathstar {
            speed += drive.baseSpeed
        }

        return speed
    }

    /// The deuterium the ship uses per flight unit, before distance and speed are taken into account.
    public func fuelConsumption(
        driveLevels: DriveLevels,
        characterClass: CharacterClass = .notSelected,
        deuteriumSaveFactor: Double = 1
    ) -> Int {
        guard let drive = drive(for: driveLevels) else { return 0 }

        let fuelConsumption = Int(deuteriumSaveFactor * Double(drive.fuelConsumption))
        return characterClass.isGeneral ? fuelConsumption / 2 : fuelConsumption
    }

    /// - Parameters:
    ///   - probeRaids: Whether the universe lets espionage probes carry resources.
    ///   - isPioneers: Whether the universe is a Pioneers universe, where hyperspace technology adds 2% per level instead of 5%.
    public func cargoCapacity(
        hyperspaceTechnology: Level,
        characterClass: CharacterClass = .notSelected,
        probeRaids: Bool = false,
        isPioneers: Bool = false
    ) -> Int {
        if isEspionageProbe, !probeRaids {
            return 0
        }

        let hyperspaceBonusPerLevel = isPioneers ? 2 : 5
        var cargoCapacity = baseCargoCapacity + baseCargoCapacity * hyperspaceTechnology * hyperspaceBonusPerLevel / 100

        if characterClass.isCollector, isCargoShip {
            cargoCapacity += baseCargoCapacity / 4
        }

        return cargoCapacity
    }
}

// MARK: Ship kinds with class bonuses

extension Ship {

    private var isCargoShip: Bool {
        id == ShipType.smallCargo.id || id == ShipType.largeCargo.id
    }

    private var isRecycler: Bool {
        id == ShipType.recycler.id
    }

    private var isDeathstar: Bool {
        id == ShipType.deathstar.id
    }

    private var isEspionageProbe: Bool {
        id == ShipType.espionageProbe.id
    }
}

// MARK: Hashable

extension Ship {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: CustomStringConvertible

extension Ship {

    public var description: String {
        name
    }
}
