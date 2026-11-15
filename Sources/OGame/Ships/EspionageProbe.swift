//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct EspionageProbe: Ship {

    public let id = 210
    public let name = "Espionage Probe"
    public let cost = Resources(crystal: 1_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 3),
        Requirement(requires: .combustionDrive, level: 3),
        Requirement(requires: .espionageTechnology, level: 2)
    ]
    public let drives = [
        ShipDrive(drive: .combustion, baseSpeed: 100_000_000, fuelConsumption: 1, minimumLevel: 3)
    ]
    public let baseShieldPower = 0
    public let baseWeaponPower = 0
    public let baseCargoCapacity = 5
    public let isCombatShip = false
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
