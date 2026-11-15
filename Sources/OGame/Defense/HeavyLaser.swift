//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HeavyLaser: Defense {

    public let id = 403
    public let name = "Heavy Laser"
    public let cost = Resources(metal: 6_000, crystal: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 4),
        Requirement(requires: .energyTechnology, level: 3),
        Requirement(requires: .laserTechnology, level: 6)
    ]
    public let baseShieldPower = 100
    public let baseWeaponPower = 250
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
