//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct EnhancedProductionTechnologies: LifeformResearch {

    public let id = 11_208
    public let name = "Enhanced Production Technologies"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 80_000, crystal: 50_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 6_000
    public let durationFactor = 1.3

    public init() {}
}
