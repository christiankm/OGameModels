//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IonCannon: Defense {

    public let id = 405
    public let name = "Ion Cannon"
    public let cost = Resources(metal: 5_000, crystal: 3_000)
    public let requirements = [
        Requirement(requires: .shipyard, level: 4),
        Requirement(requires: .ionTechnology, level: 4)
    ]
    public let baseShieldPower = 500
    public let baseWeaponPower = 150
    public let rapidfire = [
        ShipType.reaper.id: 2
    ]

    public init() {}
}
