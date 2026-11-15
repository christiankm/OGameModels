//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct OptimisedSiloConstructionMethod: LifeformResearch {

    public let id = 12_214
    public let name = "Optimised Silo Construction Method"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 220_000, crystal: 110_000, deuterium: 110_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 9_000
    public let durationFactor = 1.3

    public init() {}
}
