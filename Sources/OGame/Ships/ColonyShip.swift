//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ColonyShip: Ship {

    public let id = 208
    public let name = "Colony Ship"
    public let cost = Resources(metal: 10_000, crystal: 20_000, deuterium: 10_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 4),
        Requirement(requires: .impulseDrive, level: 3)
    ]
    public let drives = [
        ShipDrive(drive: .impulse, baseSpeed: 2_500, fuelConsumption: 1_000, minimumLevel: 3)
    ]
    public let baseShieldPower = 100
    public let baseWeaponPower = 50
    public let baseCargoCapacity = 7_500
    public let isCombatShip = false
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5
    ]

    public init() {}
}
