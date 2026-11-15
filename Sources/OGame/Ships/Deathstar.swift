//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Deathstar: Ship {

    public let id = 214
    public let name = "Deathstar"
    public let cost = Resources(metal: 5_000_000, crystal: 4_000_000, deuterium: 1_000_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 12),
        Requirement(requires: .hyperspaceDrive, level: 7),
        Requirement(requires: .hyperspaceTechnology, level: 6),
        Requirement(requires: .gravitonTechnology, level: 1)
    ]
    public let drives = [
        ShipDrive(drive: .hyperspace, baseSpeed: 100, fuelConsumption: 1, minimumLevel: 7)
    ]
    public let baseShieldPower = 50_000
    public let baseWeaponPower = 200_000
    public let baseCargoCapacity = 1_000_000
    public let isCombatShip = true
    public let rapidfire = [
        ShipType.espionageProbe.id: 1_250,
        ShipType.solarSatellite.id: 1_250,
        ShipType.crawler.id: 1_250,
        ShipType.lightFighter.id: 200,
        ShipType.heavyFighter.id: 100,
        ShipType.cruiser.id: 33,
        ShipType.battleship.id: 30,
        ShipType.bomber.id: 25,
        ShipType.destroyer.id: 5,
        ShipType.smallCargo.id: 250,
        ShipType.largeCargo.id: 250,
        ShipType.colonyShip.id: 250,
        ShipType.recycler.id: 250,
        ShipType.battlecruiser.id: 15,
        ShipType.pathfinder.id: 30,
        ShipType.reaper.id: 10,
        RocketLauncher().id: 200,
        LightLaser().id: 200,
        HeavyLaser().id: 100,
        IonCannon().id: 100,
        GaussCannon().id: 50
    ]

    public init() {}
}
