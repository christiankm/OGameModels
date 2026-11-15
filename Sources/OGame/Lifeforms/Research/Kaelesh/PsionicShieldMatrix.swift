//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PsionicShieldMatrix: LifeformResearch {

    public let id = 14_217
    public let name = "Psionic Shield Matrix"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 500_000, crystal: 300_000, deuterium: 200_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 13_000
    public let durationFactor = 1.3

    public init() {}
}
