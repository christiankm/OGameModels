//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighEnergySmelting: LifeformBuilding {

    public let id = 11_106
    public let name = "High Energy Smelting"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 9_000, crystal: 6_000, deuterium: 3_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
        Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
        Requirement(requires: .lifeformBuilding(.researchCentre), level: 5)
    ]

    public init() {}
}
