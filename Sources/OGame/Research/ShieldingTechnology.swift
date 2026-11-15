//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ShieldingTechnology: Research {

    public let id = 110
    public let name = "Shielding Technology"
    public let baseCost = Resources(metal: 200, crystal: 600)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 6),
        Requirement(requires: .energyTechnology, level: 3)
    ]

    public init() {}
}
