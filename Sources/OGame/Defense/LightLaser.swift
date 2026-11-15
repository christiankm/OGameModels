//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct LightLaser: Defense {

    public let id = 402
    public let name = "Light Laser"
    public let cost = Resources(metal: 1_500, crystal: 500)
    public let requirements = [
        Requirement(requires: .shipyard, level: 2),
        Requirement(requires: .laserTechnology, level: 3)
    ]
    public let baseShieldPower = 25
    public let baseWeaponPower = 100
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
