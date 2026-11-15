//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AntimatterCondenser: LifeformBuilding {

    public let id = 14_102
    public let name = "Antimatter Condenser"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 6, crystal: 3, energy: 9)
    public let costIncreaseFactor = 1.20
    public let energyIncreaseFactor = 1.02
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.22
    public let requirements: [Requirement] = []

    public init() {}
}
