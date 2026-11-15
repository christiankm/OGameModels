//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighPerformanceExtractors: LifeformResearch {

    public let id = 11_202
    public let name = "High Performance Extractors"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 7_000, crystal: 10_000, deuterium: 5_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3

    public init() {}
}
