//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Reaper: Ship {

    public let id = 218
    public let name = "Reaper"
    public let cost = Resources(metal: 85_000, crystal: 55_000, deuterium: 20_000)
    public let requirements = [
        Requirement(requires: .generalClass, level: 1),
        Requirement(requires: .shipyard, level: 10),
        Requirement(requires: .hyperspaceDrive, level: 7),
        Requirement(requires: .hyperspaceTechnology, level: 6),
        Requirement(requires: .shieldingTechnology, level: 6)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 7_000, fuelConsumption: 1_100, minimumLevel: 7)
    ]
    public let baseShieldPower = 700
    public let baseWeaponPower = 2_800
    public let baseCargoCapacity = 10_000
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.battleship.id: 7,
        ShipType.bomber.id: 4,
        ShipType.destroyer.id: 3
    ]

    public init() {}
}
