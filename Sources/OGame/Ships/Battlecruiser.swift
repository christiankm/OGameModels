//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Battlecruiser: Ship {

    public let id = 215
    public let name = "Battlecruiser"
    public let cost = Resources(metal: 30_000, crystal: 40_000, deuterium: 15_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 8),
        Requirement(requires: .hyperspaceDrive, level: 5),
        Requirement(requires: .hyperspaceTechnology, level: 5),
        Requirement(requires: .laserTechnology, level: 12)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 10_000, fuelConsumption: 250, minimumLevel: 5)
    ]
    public let baseShieldPower = 400
    public let baseWeaponPower = 700
    public let baseCargoCapacity = 750
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        ShipType.heavyFighter.id: 4,
        ShipType.cruiser.id: 4,
        ShipType.battleship.id: 7,
        ShipType.smallCargo.id: 3,
        ShipType.largeCargo.id: 3
    ]

    public init() {}
}
