//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IonTechnology: Research {

    public let id = 121
    public let name = "Ion Technology"
    public let baseCost = Resources(metal: 1_000, crystal: 300, deuterium: 100)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 4),
        Requirement(requires: .energyTechnology, level: 4),
        Requirement(requires: .laserTechnology, level: 5)
    ]

    public init() {}
}
