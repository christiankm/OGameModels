//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HeatRecovery: LifeformResearch {

    public let id = 14_201
    public let name = "Heat Recovery"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 10_000, crystal: 6_000, deuterium: 1_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 1_000
    public let durationFactor = 1.4

    public init() {}
}
