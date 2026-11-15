//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ArmourTechnology: Research {

    public let id = 111
    public let name = "Armour Technology"
    public let baseCost = Resources(metal: 1_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 2)
    ]

    public init() {}
}
