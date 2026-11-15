//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct EnergyTechnology: Research {

    public let id = 113
    public let name = "Energy Technology"
    public let baseCost = Resources(crystal: 800, deuterium: 400)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 1)
    ]

    public init() {}
}
