//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct UpdateNetwork: LifeformBuilding {

    public let id = 13_104
    public let name = "Update Network"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 5_000, crystal: 3_800, deuterium: 1_000, population: 40_000_000)
    public let costIncreaseFactor = 1.80
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.6
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41)
    ]

    public init() {}
}
