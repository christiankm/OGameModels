//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct TelekineticDrive: LifeformResearch {

    public let id = 14_210
    public let name = "Telekinetic Drive"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 85_000, crystal: 40_000, deuterium: 35_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 7_000
    public let durationFactor = 1.2

    public init() {}
}
