//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Bomber: Ship {

    public let id = 211
    public let name = "Bomber"
    public let cost = Resources(metal: 50_000, crystal: 25_000, deuterium: 15_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 8),
        Requirement(requires: .impulseDrive, level: 6),
        Requirement(requires: .plasmaTechnology, level: 5)
    ]
    public let drives = [
        ShipDrive(drive: .impulse, baseSpeed: 4_000, fuelConsumption: 700, minimumLevel: 6),
        ShipDrive(drive: .hyperspace, baseSpeed: 5_000, fuelConsumption: 700, minimumLevel: 8)
    ]
    public let baseShieldPower = 500
    public let baseWeaponPower = 1_000
    public let baseCargoCapacity = 500
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 5,
        ShipType.solarSatellite.id: 5,
        ShipType.crawler.id: 5,
        RocketLauncher().id: 20,
        LightLaser().id: 20,
        HeavyLaser().id: 10,
        IonCannon().id: 10,
        GaussCannon().id: 5,
        PlasmaTurret().id: 5
    ]

    public init() {}
}
