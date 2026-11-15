//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct LargeShieldDome: Defense {

    public let id = 408
    public let name = "Large Shield Dome"
    public let cost = Resources(metal: 50_000, crystal: 50_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 6),
        Requirement(requires: .shieldingTechnology, level: 6)
    ]
    public let baseShieldPower = 10_000
    public let baseWeaponPower = 1
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
