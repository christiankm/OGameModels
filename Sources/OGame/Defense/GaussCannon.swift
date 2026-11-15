//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct GaussCannon: Defense {

    public let id = 404
    public let name = "Gauss Cannon"
    public let cost = Resources(metal: 20_000, crystal: 15_000, deuterium: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 6),
        Requirement(requires: .weaponsTechnology, level: 3),
        Requirement(requires: .energyTechnology, level: 6),
        Requirement(requires: .shieldingTechnology, level: 1)
    ]
    public let baseShieldPower = 200
    public let baseWeaponPower = 1_100
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
