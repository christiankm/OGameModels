//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct OverclockingHeavyFighter: LifeformResearch {

    public let id = 14_209
    public let name = "Overclocking Heavy Fighter"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 320_000, crystal: 240_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 6_500
    public let durationFactor = 1.4

    public init() {}
}
