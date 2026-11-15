//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Metropolis: LifeformBuilding {

    public let id = 11_111
    public let name = "Metropolis"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 80_000, crystal: 35_000, deuterium: 60_000)
    public let costIncreaseFactor = 1.5
    public let baseDuration: TimeInterval = 90_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
        Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1),
        Requirement(requires: .lifeformBuilding(.skyscraper), level: 6),
        Requirement(requires: .lifeformBuilding(.neuroCalibrationCentre), level: 1)
    ]

    public init() {}
}
