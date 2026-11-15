//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ArtificialSwarmIntelligence: LifeformResearch {

    public let id = 13_213
    public let name = "Artificial Swarm Intelligence"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 200_000, crystal: 100_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 8_500
    public let durationFactor = 1.3

    public init() {}
}
