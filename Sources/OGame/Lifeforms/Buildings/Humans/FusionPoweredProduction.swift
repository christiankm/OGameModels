//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct FusionPoweredProduction: LifeformBuilding {

    public let id = 11_108
    public let name = "Fusion Powered Production"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 50_000, crystal: 25_000, deuterium: 15_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 28_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1)
    ]

    public init() {}
}
