//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ResearchCentre: LifeformBuilding {

    public let id = 11_103
    public let name = "Research Centre"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 20_000, crystal: 25_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.3
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.25
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
        Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22)
    ]

    public init() {}
}
