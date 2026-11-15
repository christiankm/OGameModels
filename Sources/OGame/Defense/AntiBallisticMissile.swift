//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AntiBallisticMissile: Defense {

    public let id = 502
    public let name = "Anti Ballistic Missile"
    public let cost = Resources(metal: 8_000, deuterium: 2_000)
    public let requirements = [
        Requirement(requires: .missileSilo, level: 2)
    ]
    public let baseShieldPower = 1
    public let baseWeaponPower = 1
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
