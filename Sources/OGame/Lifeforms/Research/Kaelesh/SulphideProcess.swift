//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SulphideProcess: LifeformResearch {

    public let id = 14_202
    public let name = "Sulphide Process"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 7_500, crystal: 12_500, deuterium: 5_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3

    public init() {}
}
