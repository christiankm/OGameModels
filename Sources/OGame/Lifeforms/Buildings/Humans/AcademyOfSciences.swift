//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AcademyOfSciences: LifeformBuilding {

    public let id = 11_104
    public let name = "Academy of Sciences"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 5_000, crystal: 3_200, deuterium: 1_500, population: 20_000_000)
    public let costIncreaseFactor = 1.70
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.6
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41)
    ]

    public init() {}
}
