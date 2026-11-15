//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ImprovedStellarator: LifeformResearch {

    public let id = 12_209
    public let name = "Improved Stellarator"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 75_000, crystal: 55_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 6_500
    public let durationFactor = 1.3

    public init() {}
}
