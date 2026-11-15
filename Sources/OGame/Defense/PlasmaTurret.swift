//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PlasmaTurret: Defense {

    public let id = 406
    public let name = "Plasma Turret"
    public let cost = Resources(metal: 50_000, crystal: 50_000, deuterium: 30_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 8),
        Requirement(requires: .plasmaTechnology, level: 7)
    ]
    public let baseShieldPower = 300
    public let baseWeaponPower = 3_000
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
