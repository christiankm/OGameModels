//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct IonCrystalModules: LifeformResearch {

    public let id = 12_213
    public let name = "Ion Crystal Modules"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 200_000, crystal: 100_000, deuterium: 100_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 8_500
    public let durationFactor = 1.3

    public init() {}
}
