//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SixthSense: LifeformResearch {

    public let id = 14_211
    public let name = "Sixth Sense"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 120_000, crystal: 30_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 7_500
    public let durationFactor = 1.4

    public init() {}
}
