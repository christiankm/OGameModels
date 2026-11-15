//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MagmaForge: LifeformBuilding {

    public let id = 12_106
    public let name = "Magma Forge"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 10_000, crystal: 8_000, deuterium: 1_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
        Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5)
    ]

    public init() {}
}
