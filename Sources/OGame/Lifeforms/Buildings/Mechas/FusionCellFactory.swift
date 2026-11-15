//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct FusionCellFactory: LifeformBuilding {

    public let id = 13_102
    public let name = "Fusion Cell Factory"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 5, crystal: 2, energy: 8)
    public let costIncreaseFactor = 1.18
    public let energyIncreaseFactor = 1.02
    public let baseDuration: TimeInterval = 48
    public let durationFactor = 1.2
    public let requirements: [Requirement] = []

    public init() {}
}
