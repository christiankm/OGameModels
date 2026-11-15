//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RocktalCollectorEnhancement: LifeformResearch {

    public let id = 12_218
    public let name = "Rocktal Collector Enhancement"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 300_000, crystal: 180_000, deuterium: 120_000)
    public let costIncreaseFactor = 1.70
    public let baseDuration: TimeInterval = 11_000
    public let durationFactor = 1.4

    public init() {}
}
