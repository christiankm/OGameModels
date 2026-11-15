//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ObsidianShieldReinforcement: LifeformResearch {

    public let id = 12_216
    public let name = "Obsidian Shield Reinforcement"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 250_000, crystal: 250_000, deuterium: 250_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 10_000
    public let durationFactor = 1.4

    public init() {}
}
