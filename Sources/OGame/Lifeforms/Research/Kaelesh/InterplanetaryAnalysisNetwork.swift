//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct InterplanetaryAnalysisNetwork: LifeformResearch {

    public let id = 14_208
    public let name = "Interplanetary Analysis Network"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 80_000, crystal: 50_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 6_000
    public let durationFactor = 1.2

    public init() {}
}
