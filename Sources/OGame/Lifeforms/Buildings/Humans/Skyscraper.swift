//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Skyscraper: LifeformBuilding {

    public let id = 11_109
    public let name = "Skyscraper"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 75_000, crystal: 20_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.09
    public let baseDuration: TimeInterval = 40_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
        Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1)
    ]

    public init() {}
}
