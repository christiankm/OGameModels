//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct NeuromodalCompressor: LifeformResearch {

    public let id = 14_206
    public let name = "Neuromodal Compressor"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 50_000, crystal: 50_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 5_000
    public let durationFactor = 1.4

    public init() {}
}
