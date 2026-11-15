//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ResearchAI: LifeformResearch {

    public let id = 11_206
    public let name = "Research AI"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 35_000, crystal: 25_000, deuterium: 15_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 5_000
    public let durationFactor = 1.3

    public init() {}
}
