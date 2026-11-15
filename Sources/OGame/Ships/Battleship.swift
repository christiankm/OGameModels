//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Battleship: Ship {

    public let id = 207
    public let name = "Battleship"
    public let cost = Resources(metal: 45_000, crystal: 15_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 7),
        Requirement(requires: .hyperspaceDrive, level: 4)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 10_000, fuelConsumption: 500, minimumLevel: 4)
    ]
    public let baseShieldPower = 200
    public let baseWeaponPower = 1_000
    public let baseCargoCapacity = 1_500
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.pathfinder.id: 5
    ]

    public init() {}
}
