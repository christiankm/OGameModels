//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MagmaPoweredProduction: LifeformResearch {

    public let id = 12_205
    public let name = "Magma Powered Production"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 25_000, crystal: 20_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 4_500
    public let durationFactor = 1.3

    public init() {}
}
