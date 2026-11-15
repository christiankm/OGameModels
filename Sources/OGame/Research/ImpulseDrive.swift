//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ImpulseDrive: Research {

    public let id = 117
    public let name = "Impulse Drive"
    public let baseCost = Resources(metal: 2_000, crystal: 4_000, deuterium: 600)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 2),
        Requirement(requires: .energyTechnology, level: 1)
    ]

    public init() {}
}
