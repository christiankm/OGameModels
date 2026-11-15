//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct NeuroInterface: LifeformResearch {

    public let id = 14_207
    public let name = "Neuro Interface"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 70_000, crystal: 40_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 5_500
    public let durationFactor = 1.3

    public init() {}
}
