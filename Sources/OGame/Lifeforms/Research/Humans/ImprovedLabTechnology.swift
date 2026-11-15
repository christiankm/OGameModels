//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ImprovedLabTechnology: LifeformResearch {

    public let id = 11_211
    public let name = "Improved Lab Technology"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 120_000, crystal: 30_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 7_500
    public let durationFactor = 1.3

    public init() {}
}
