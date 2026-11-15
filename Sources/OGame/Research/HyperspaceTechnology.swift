//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HyperspaceTechnology: Research {

    public let id = 114
    public let name = "Hyperspace Technology"
    public let baseCost = Resources(crystal: 4_000, deuterium: 2_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 7),
        Requirement(requires: .shieldingTechnology, level: 5),
        Requirement(requires: .energyTechnology, level: 5)
    ]

    public init() {}
}
