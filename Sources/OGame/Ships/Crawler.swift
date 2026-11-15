//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Crawler: Ship {

    public let id = 217
    public let name = "Crawler"
    public let cost = Resources(metal: 2_000, crystal: 2_000, deuterium: 1_000)
    public let requirements = [
        Requirement(requires: .collectorClass, level: 1),
        Requirement(requires: .shipyard, level: 5),
        Requirement(requires: .combustionDrive, level: 4),
        Requirement(requires: .armourTechnology, level: 4),
        Requirement(requires: .laserTechnology, level: 4)
    ]
    public let drives: [ShipDrive] = []
    public let baseShieldPower = 1
    public let baseWeaponPower = 1
    public let baseCargoCapacity = 0
    public let isCombatShip = false
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
