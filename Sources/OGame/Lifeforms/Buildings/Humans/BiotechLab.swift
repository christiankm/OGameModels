//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct BiotechLab: LifeformBuilding {

    public let id = 11_110
    public let name = "Biotech Lab"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 150_000, crystal: 30_000, deuterium: 15_000)
    public let costIncreaseFactor = 1.12
    public let baseDuration: TimeInterval = 52_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
        Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
        Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 2)
    ]

    public init() {}
}
