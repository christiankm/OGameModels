//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Megalith: LifeformBuilding {

    public let id = 12_108
    public let name = "Megalith"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 50_000, crystal: 35_000, deuterium: 15_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 40_000
    public let durationFactor = 1.4
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
        Requirement(requires: .lifeformBuilding(.runeForge), level: 1)
    ]

    public init() {}
}
