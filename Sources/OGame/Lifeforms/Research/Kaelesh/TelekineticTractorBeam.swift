//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct TelekineticTractorBeam: LifeformResearch {

    public let id = 14_204
    public let name = "Telekinetic Tractor Beam"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 20_000, crystal: 15_000, deuterium: 7_500)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 3_500
    public let durationFactor = 1.4

    public init() {}
}
