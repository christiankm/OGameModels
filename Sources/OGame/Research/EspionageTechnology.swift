//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct EspionageTechnology: Research {

    public let id = 106
    public let name = "Espionage Technology"
    public let baseCost = Resources(metal: 200, crystal: 1_000, deuterium: 200)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 3)
    ]

    public init() {}
}
