//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IonCrystalEnhancementHeavyFighter: LifeformResearch {

    public let id = 12_208
    public let name = "Ion Crystal Enhancement Heavy Fighter"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 160_000, crystal: 120_000, deuterium: 50_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 6_000
    public let durationFactor = 1.4

    public init() {}
}
