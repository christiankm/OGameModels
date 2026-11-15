//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct GeneralOverhaulBomber: LifeformResearch {

    public let id = 13_215
    public let name = "General Overhaul Bomber"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 320_000, crystal: 240_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 9_500
    public let durationFactor = 1.4

    public init() {}
}
