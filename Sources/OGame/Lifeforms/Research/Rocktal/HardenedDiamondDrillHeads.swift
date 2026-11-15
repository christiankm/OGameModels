//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HardenedDiamondDrillHeads: LifeformResearch {

    public let id = 12_210
    public let name = "Hardened Diamond Drill Heads"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 85_000, crystal: 40_000, deuterium: 35_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 7_000
    public let durationFactor = 1.3

    public init() {}
}
