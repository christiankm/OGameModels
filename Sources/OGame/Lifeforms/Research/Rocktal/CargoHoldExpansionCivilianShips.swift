//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CargoHoldExpansionCivilianShips: LifeformResearch {

    public let id = 12_204
    public let name = "Cargo Hold Expansion Civilian Ships"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 20_000, crystal: 15_000, deuterium: 7_500)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 3_500
    public let durationFactor = 1.4

    public init() {}
}
