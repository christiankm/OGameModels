//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CruiserMkII: LifeformResearch {

    public let id = 11_210
    public let name = "Cruiser MkII"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 320_000, crystal: 240_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 7_000
    public let durationFactor = 1.4

    public init() {}
}
