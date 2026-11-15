//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IntergalacticResearchNetwork: Research {

    public let id = 123
    public let name = "Intergalactic Research Network"
    public let baseCost = Resources(metal: 240_000, crystal: 400_000, deuterium: 160_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 10),
        Requirement(requires: .computerTechnology, level: 8),
        Requirement(requires: .hyperspaceTechnology, level: 8)
    ]

    public init() {}
}
