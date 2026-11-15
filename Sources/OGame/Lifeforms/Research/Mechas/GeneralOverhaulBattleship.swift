//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct GeneralOverhaulBattleship: LifeformResearch {

    public let id = 13_212
    public let name = "General Overhaul Battleship"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 160_000, crystal: 120_000, deuterium: 50_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 8_000
    public let durationFactor = 1.4

    public init() {}
}
