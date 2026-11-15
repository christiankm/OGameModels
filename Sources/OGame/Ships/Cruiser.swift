//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Cruiser: Ship {

    public let id = 206
    public let name = "Cruiser"
    public let cost = Resources(metal: 20_000, crystal: 7_000, deuterium: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 5),
        Requirement(requires: .impulseDrive, level: 4),
        Requirement(requires: .ionTechnology, level: 2)
    ]
    public let drives = [
        ShipDrive(drive: .impulse, baseSpeed: 15_000, fuelConsumption: 300, minimumLevel: 4)
    ]
    public let baseShieldPower = 50
    public let baseWeaponPower = 400
    public let baseCargoCapacity = 800
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.lightFighter.id: 6,
        RocketLauncher().id: 10
    ]

    public init() {}
}
