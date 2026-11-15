//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RuneTechnologium: LifeformBuilding {

    public let id = 12_103
    public let name = "Rune Technologium"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 40_000, crystal: 10_000, deuterium: 15_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.25
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
        Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22)
    ]

    public init() {}
}
