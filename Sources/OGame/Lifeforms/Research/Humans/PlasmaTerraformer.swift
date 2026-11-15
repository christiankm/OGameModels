//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PlasmaTerraformer: LifeformResearch {

    public let id = 11_212
    public let name = "Plasma Terraformer"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 100_000, crystal: 40_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 10_000
    public let durationFactor = 1.3

    public init() {}
}
