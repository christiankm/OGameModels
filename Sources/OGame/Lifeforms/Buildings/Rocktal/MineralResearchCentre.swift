//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MineralResearchCentre: LifeformBuilding {

    public let id = 12_111
    public let name = "Mineral Research Centre"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 250_000, crystal: 150_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.80
    public let baseDuration: TimeInterval = 90_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
        Requirement(requires: .lifeformBuilding(.megalith), level: 1),
        Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 6),
        Requirement(requires: .lifeformBuilding(.oriktorium), level: 1)
    ]

    public init() {}
}
