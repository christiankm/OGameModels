//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct NeuroCalibrationCentre: LifeformBuilding {

    public let id = 11_105
    public let name = "Neuro Calibration Centre"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 100_000_000)
    public let costIncreaseFactor = 1.70
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 64_000
    public let durationFactor = 1.7
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
        Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1),
        Requirement(requires: .lifeformBuilding(.skyscraper), level: 5)
    ]

    public init() {}
}
