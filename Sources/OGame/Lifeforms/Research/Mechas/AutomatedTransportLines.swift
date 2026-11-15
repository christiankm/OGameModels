//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AutomatedTransportLines: LifeformResearch {

    public let id = 13_206
    public let name = "Automated Transport Lines"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 50_000, crystal: 50_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 5_000
    public let durationFactor = 1.3

    public init() {}
}
