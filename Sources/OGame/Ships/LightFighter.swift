//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct LightFighter: Ship {

    public let id = 204
    public let name = "Light Fighter"
    public let cost = Resources(metal: 3_000, crystal: 1_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 1),
        Requirement(requires: .combustionDrive, level: 1)
    ]
    public let drives = [
        ShipDrive(drive: .combustion, baseSpeed: 12_500, fuelConsumption: 20, minimumLevel: 1)
    ]
    public let baseShieldPower = 10
    public let baseWeaponPower = 50
    public let baseCargoCapacity = 50
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5
    ]

    public init() {}
}
