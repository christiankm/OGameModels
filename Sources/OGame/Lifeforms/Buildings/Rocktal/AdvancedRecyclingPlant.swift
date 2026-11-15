//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AdvancedRecyclingPlant: LifeformBuilding {

    public let id = 12_112
    public let name = "Advanced Recycling Plant"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 95_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
        Requirement(requires: .lifeformBuilding(.megalith), level: 5),
        Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 6),
        Requirement(requires: .lifeformBuilding(.oriktorium), level: 5),
        Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5),
        Requirement(requires: .lifeformBuilding(.magmaForge), level: 3),
        Requirement(requires: .lifeformBuilding(.disruptionChamber), level: 4),
        Requirement(requires: .lifeformBuilding(.mineralResearchCentre), level: 5)
    ]

    public init() {}
}
