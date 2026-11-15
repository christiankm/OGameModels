//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CrystalFarm: LifeformBuilding {

    public let id = 12_102
    public let name = "Crystal Farm"
    public let lifeform = Lifeform.rocktal
    public let baseCost = Resources(metal: 7, crystal: 2, energy: 10)
    public let costIncreaseFactor = 1.20
    public let energyIncreaseFactor = 1.03
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.21
    public let requirements: [Requirement] = []

    public init() {}
}
