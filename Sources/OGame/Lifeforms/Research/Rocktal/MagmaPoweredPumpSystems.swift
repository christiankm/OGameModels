//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MagmaPoweredPumpSystems: LifeformResearch {

    public let id = 12_212
    public let name = "Magma Powered Pump Systems"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 100_000, crystal: 40_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 8_000
    public let durationFactor = 1.3

    public init() {}
}
