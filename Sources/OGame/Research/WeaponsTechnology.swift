//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct WeaponsTechnology: Research {

    public let id = 109
    public let name = "Weapons Technology"
    public let baseCost = Resources(metal: 800, crystal: 200)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 4)
    ]

    public init() {}
}
