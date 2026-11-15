//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DiamondEnergyTransmitter: LifeformResearch {

    public let id = 12_215
    public let name = "Diamond Energy Transmitter"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 240_000, crystal: 120_000, deuterium: 120_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 9_500
    public let durationFactor = 1.3

    public init() {}
}
