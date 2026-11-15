//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SmallCargo: Ship {

    public let id = 202
    public let name = "Small Cargo"
    public let cost = Resources(metal: 2_000, crystal: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 2),
        Requirement(requires: .combustionDrive, level: 2)
    ]
    public let drives = [
        ShipDrive(drive: .combustion, baseSpeed: 5_000, fuelConsumption: 10, minimumLevel: 2),
        ShipDrive(drive: .impulse, baseSpeed: 10_000, fuelConsumption: 20, minimumLevel: 5)
    ]
    public let baseShieldPower = 10
    public let baseWeaponPower = 5
    public let baseCargoCapacity = 5_000
    public let isCombatShip = false
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5
    ]

    public init() {}
}
