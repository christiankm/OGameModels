//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PsionicNetwork: LifeformResearch {

    public let id = 14_203
    public let name = "Psionic Network"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 15_000, crystal: 10_000, deuterium: 5_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 2_500
    public let durationFactor = 1.4

    public init() {}
}
