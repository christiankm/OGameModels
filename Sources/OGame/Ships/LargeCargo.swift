//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct LargeCargo: Ship {

    public let id = 203
    public let name = "Large Cargo"
    public let cost = Resources(metal: 6_000, crystal: 6_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 4),
        Requirement(requires: .combustionDrive, level: 6)
    ]
    public let drives = [
        ShipDrive(drive: .combustion, baseSpeed: 7_500, fuelConsumption: 50, minimumLevel: 6)
    ]
    public let baseShieldPower = 25
    public let baseWeaponPower = 5
    public let baseCargoCapacity = 25_000
    public let isCombatShip = false
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5
    ]

    public init() {}
}
