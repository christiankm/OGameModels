//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Destroyer: Ship {

    public let id = 213
    public let name = "Destroyer"
    public let cost = Resources(metal: 60_000, crystal: 50_000, deuterium: 15_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 9),
        Requirement(requires: .hyperspaceDrive, level: 6),
        Requirement(requires: .hyperspaceTechnology, level: 5)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 5_000, fuelConsumption: 1_000, minimumLevel: 6)
    ]
    public let baseShieldPower = 500
    public let baseWeaponPower = 2_000
    public let baseCargoCapacity = 2_000
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.battlecruiser.id: 2,
        LightLaser().id: 10
    ]

    public init() {}
}
