//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MeditationEnclave: LifeformBuilding {

    public let id = 12_101
    public let name = "Meditation Enclave"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 9, crystal: 3)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.21
    public let requirements: [Requirement] = []

    public init() {}
}
