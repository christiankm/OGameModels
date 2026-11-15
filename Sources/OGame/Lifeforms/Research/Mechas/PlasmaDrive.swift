//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PlasmaDrive: LifeformResearch {

    public let id = 13_202
    public let name = "Plasma Drive"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 7_500, crystal: 12_500, deuterium: 5_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3

    public init() {}
}
