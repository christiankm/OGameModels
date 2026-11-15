//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DestroyerMkII: LifeformResearch {

    public let id = 11_215
    public let name = "Destroyer MkII"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 160_000, crystal: 120_000, deuterium: 50_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 9_500
    public let durationFactor = 1.4

    public init() {}
}
