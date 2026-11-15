//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IntergalacticEnvoys: LifeformResearch {

    public let id = 11_201
    public let name = "Intergalactic Envoys"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 5_000, crystal: 2_500, deuterium: 500)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 1_000
    public let durationFactor = 1.2

    public init() {}
}
