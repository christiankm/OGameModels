//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RuneForge: LifeformBuilding {

    public let id = 12_104
    public let name = "Rune Forge"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 5_000, crystal: 3_800, deuterium: 1_000, population: 16_000_000)
    public let costIncreaseFactor = 1.70
    public let populationIncreaseFactor = 1.14
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.6
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41)
    ]

    public init() {}
}
