//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct FusionDrives: LifeformResearch {

    public let id = 11_203
    public let name = "Fusion Drives"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 15_000, crystal: 10_000, deuterium: 5_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 2_500
    public let durationFactor = 1.3

    public init() {}
}
