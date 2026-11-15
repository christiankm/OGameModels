//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct FoodSilo: LifeformBuilding {

    public let id = 11_107
    public let name = "Food Silo"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 25_000, crystal: 13_000, deuterium: 7_000)
    public let costIncreaseFactor = 1.09
    public let baseDuration: TimeInterval = 12_000
    public let durationFactor = 1.17
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
        Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.researchCentre), level: 5),
        Requirement(requires: .lifeformBuilding(.highEnergySmelting), level: 3)
    ]

    public init() {}
}
