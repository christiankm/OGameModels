//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HeavyFighter: Ship {

    public let id = 205
    public let name = "Heavy Fighter"
    public let cost = Resources(metal: 6_000, crystal: 4_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 3),
        Requirement(requires: .impulseDrive, level: 2),
        Requirement(requires: .armourTechnology, level: 2)
    ]
    public let drives = [
        ShipDrive(drive: .impulse, baseSpeed: 10_000, fuelConsumption: 75, minimumLevel: 2)
    ]
    public let baseShieldPower = 25
    public let baseWeaponPower = 150
    public let baseCargoCapacity = 100
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.smallCargo.id: 3
    ]

    public init() {}
}
