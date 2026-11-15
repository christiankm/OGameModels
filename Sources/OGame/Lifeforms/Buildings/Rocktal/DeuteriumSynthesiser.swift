//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DeuteriumSynthesiser: LifeformBuilding {

    public let id = 12_110
    public let name = "Deuterium Synthesiser"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 120_000, crystal: 50_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 52_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
        Requirement(requires: .lifeformBuilding(.megalith), level: 2)
    ]

    public init() {}
}
