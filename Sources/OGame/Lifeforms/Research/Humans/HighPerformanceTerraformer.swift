//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighPerformanceTerraformer: LifeformResearch {

    public let id = 11_207
    public let name = "High Performance Terraformer"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 70_000, crystal: 40_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 8_000
    public let durationFactor = 1.3

    public init() {}
}
