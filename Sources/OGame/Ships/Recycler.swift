//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Recycler: Ship {

    public let id = 209
    public let name = "Recycler"
    public let cost = Resources(metal: 10_000, crystal: 6_000, deuterium: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 4),
        Requirement(requires: .combustionDrive, level: 6),
        Requirement(requires: .shieldingTechnology, level: 2)
    ]
    public let drives = [
        ShipDrive(drive: .combustion, baseSpeed: 2_000, fuelConsumption: 300, minimumLevel: 6),
        ShipDrive(drive: .impulse, baseSpeed: 4_000, fuelConsumption: 600, minimumLevel: 17),
        ShipDrive(drive: .hyperspace, baseSpeed: 6_000, fuelConsumption: 900, minimumLevel: 15)
    ]
    public let baseShieldPower = 10
    public let baseWeaponPower = 1
    public let baseCargoCapacity = 20_000
    public let isCombatShip = false
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5
    ]

    public init() {}
}
