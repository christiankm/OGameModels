//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct LaserTechnology: Research {

    public let id = 120
    public let name = "Laser Technology"
    public let baseCost = Resources(metal: 200, crystal: 100)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .energyTechnology, level: 2)
    ]

    public init() {}
}
