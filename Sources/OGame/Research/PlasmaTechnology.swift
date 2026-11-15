//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PlasmaTechnology: Research {

    public let id = 122
    public let name = "Plasma Technology"
    public let baseCost = Resources(metal: 2_000, crystal: 4_000, deuterium: 1_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .ionTechnology, level: 5),
        Requirement(requires: .energyTechnology, level: 8),
        Requirement(requires: .laserTechnology, level: 10)
    ]

    public init() {}
}
