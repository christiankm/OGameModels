//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AntimatterConvector: LifeformBuilding {

    public let id = 14_106
    public let name = "Antimatter Convector"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 8_500, crystal: 5_000, deuterium: 3_000)
    public let costIncreaseFactor = 1.25
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.35
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
        Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
        Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5)
    ]

    public init() {}
}
