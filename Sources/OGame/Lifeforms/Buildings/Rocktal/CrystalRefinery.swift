//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CrystalRefinery: LifeformBuilding {

    public let id = 12_109
    public let name = "Crystal Refinery"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 85_000, crystal: 44_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 40_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
        Requirement(requires: .lifeformBuilding(.megalith), level: 1)
    ]

    public init() {}
}
