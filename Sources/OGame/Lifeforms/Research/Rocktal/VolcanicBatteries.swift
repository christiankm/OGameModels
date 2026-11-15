//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct VolcanicBatteries: LifeformResearch {

    public let id = 12_201
    public let name = "Volcanic Batteries"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 10_000, crystal: 6_000, deuterium: 1_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 1_000
    public let durationFactor = 1.3

    public init() {}
}
