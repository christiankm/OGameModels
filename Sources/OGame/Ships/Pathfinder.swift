//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Pathfinder: Ship {

    public let id = 219
    public let name = "Pathfinder"
    public let cost = Resources(metal: 8_000, crystal: 15_000, deuterium: 8_000)
    public let requirements = [
        Requirement(requires: .discovererClass, level: 1),
        Requirement(requires: .shipyard, level: 5),
        Requirement(requires: .hyperspaceDrive, level: 2),
        Requirement(requires: .shieldingTechnology, level: 7)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 12_000, fuelConsumption: 300, minimumLevel: 2)
    ]
    public let baseShieldPower = 100
    public let baseWeaponPower = 200
    public let baseCargoCapacity = 10_000
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.cruiser.id: 3,
        ShipType.lightFighter.id: 3,
        ShipType.heavyFighter.id: 2
    ]

    public init() {}
}
