//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RocketLauncher: Defense {

    public let id = 401
    public let name = "Rocket Launcher"
    public let cost = Resources(metal: 2_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 1)
    ]
    public let baseShieldPower = 20
    public let baseWeaponPower = 80
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
