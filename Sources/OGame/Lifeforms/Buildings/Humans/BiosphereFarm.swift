//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct BiosphereFarm: LifeformBuilding {

    public let id = 11_102
    public let name = "Biosphere Farm"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 5, crystal: 2, energy: 8)
    public let costIncreaseFactor = 1.23
    public let energyIncreaseFactor = 1.021
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.25
    public let requirements: [Requirement] = []

    public init() {}
}
