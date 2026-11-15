//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HallsOfRealisation: LifeformBuilding {

    public let id = 14_104
    public let name = "Halls of Realisation"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 7_500, crystal: 5_000, deuterium: 800, population: 30_000_000)
    public let costIncreaseFactor = 1.80
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.7
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42)
    ]

    public init() {}
}
