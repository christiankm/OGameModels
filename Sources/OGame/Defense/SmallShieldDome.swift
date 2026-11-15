//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SmallShieldDome: Defense {

    public let id = 407
    public let name = "Small Shield Dome"
    public let cost = Resources(metal: 10_000, crystal: 10_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 1),
        Requirement(requires: .shieldingTechnology, level: 2)
    ]
    public let baseShieldPower = 2_000
    public let baseWeaponPower = 1
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
