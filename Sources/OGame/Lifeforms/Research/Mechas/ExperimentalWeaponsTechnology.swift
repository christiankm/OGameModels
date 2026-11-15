//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ExperimentalWeaponsTechnology: LifeformResearch {

    public let id = 13_217
    public let name = "Experimental Weapons Technology"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 500_000, crystal: 300_000, deuterium: 200_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 13_000
    public let durationFactor = 1.3

    public init() {}
}
