//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct OrbitalDen: LifeformResearch {

    public let id = 11_205
    public let name = "Orbital Den"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 25_000, crystal: 20_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 4_500
    public let durationFactor = 1.3

    public init() {}
}
