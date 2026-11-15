//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PlanetaryShield: LifeformBuilding {

    public let id = 11_112
    public let name = "Planetary Shield"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 95_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.researchCentre), level: 5),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
        Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 5),
        Requirement(requires: .lifeformBuilding(.skyscraper), level: 6),
        Requirement(requires: .lifeformBuilding(.highEnergySmelting), level: 3),
        Requirement(requires: .lifeformBuilding(.metropolis), level: 5),
        Requirement(requires: .lifeformBuilding(.foodSilo), level: 4),
        Requirement(requires: .lifeformBuilding(.neuroCalibrationCentre), level: 5)
    ]

    public init() {}
}
