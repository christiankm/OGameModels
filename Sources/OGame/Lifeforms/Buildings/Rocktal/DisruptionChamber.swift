//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DisruptionChamber: LifeformBuilding {

    public let id = 12_107
    public let name = "Disruption Chamber"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 20_000, crystal: 15_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.25
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
        Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5),
        Requirement(requires: .lifeformBuilding(.magmaForge), level: 3)
    ]

    public init() {}
}
