//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Oriktorium: LifeformBuilding {

    public let id = 12_105
    public let name = "Oriktorium"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 90_000_000)
    public let costIncreaseFactor = 1.65
    public let populationIncreaseFactor = 1.1
    public let baseDuration: TimeInterval = 64_000
    public let durationFactor = 1.7
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
        Requirement(requires: .lifeformBuilding(.megalith), level: 1),
        Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 5)
    ]

    public init() {}
}
