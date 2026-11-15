//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DepthSounding: LifeformResearch {

    public let id = 12_207
    public let name = "Depth Sounding"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 70_000, crystal: 40_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 5_000
    public let durationFactor = 1.3

    public init() {}
}
