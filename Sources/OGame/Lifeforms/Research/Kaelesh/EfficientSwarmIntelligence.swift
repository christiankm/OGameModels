//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct EfficientSwarmIntelligence: LifeformResearch {

    public let id = 14_213
    public let name = "Efficient Swarm Intelligence"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 200_000, crystal: 100_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 8_500
    public let durationFactor = 1.3

    public init() {}
}
