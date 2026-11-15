//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// Units describe military units (ships and defences) which are able to fire weapons and take damage.
public protocol Unit: FixedPriceable {

    var id: GameId { get }

    var points: Int { get }

    var baseStructuralIntegrity: Int { get }

    var baseShieldPower: Int { get }

    var baseWeaponPower: Int { get }

    /// The number of shots the unit gets against each unit, keyed by the unit's ID.
    var rapidfire: [GameId: Int] { get }

    func structuralIntegrity(armorTechnology: Level) -> Int
}

extension Unit {

    public var points: Int {
        cost.metal + cost.crystal + cost.deuterium
    }

    public var baseStructuralIntegrity: Int {
        cost.metal + cost.crystal
    }

    /// Strutural integrity of a unit.
    public func structuralIntegrity(armorTechnology: Level) -> Int {
        Int(Double(baseStructuralIntegrity) * (1 + Double(armorTechnology) * 0.1))
    }
}

// MARK: Combat

extension Unit {

    /// The number of shots each ship and defence has against this unit, keyed by the attacker's ID.
    public var rapidfireFrom: [GameId: Int] {
        let attackers: [any Unit] = ShipType.allCases.map(\.ship) + DefenseType.allCases.map(\.defense)
        return attackers.reduce(into: [:]) { rapidfireFrom, attacker in
            if let shots = attacker.rapidfire[id] {
                rapidfireFrom[attacker.id] = shots
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
