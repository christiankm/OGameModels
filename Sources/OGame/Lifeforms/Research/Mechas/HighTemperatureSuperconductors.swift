//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighTemperatureSuperconductors: LifeformResearch {

    public let id = 13_211
    public let name = "High Temperature Superconductors"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 120_000, crystal: 30_000, deuterium: 25_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 7_500
    public let durationFactor = 1.3

    public init() {}
}
