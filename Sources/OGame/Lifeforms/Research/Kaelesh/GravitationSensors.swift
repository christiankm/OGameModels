//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct GravitationSensors: LifeformResearch {

    public let id = 14_215
    public let name = "Gravitation Sensors"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 240_000, crystal: 120_000, deuterium: 120_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 9_500
    public let durationFactor = 1.4

    public init() {}
}
