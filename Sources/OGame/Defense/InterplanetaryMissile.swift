//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct InterplanetaryMissile: Defense {

    public let id = 503
    public let name = "Interplanetary Missile"
    public let cost = Resources(metal: 12_500, crystal: 2_500, deuterium: 10_000)
    public let requirements = [
        Requirement(requires: .missileSilo, level: 4),
        Requirement(requires: .impulseDrive, level: 1)
    ]
    public let baseShieldPower = 1
    public let baseWeaponPower = 12_000
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
