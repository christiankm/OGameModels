//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CloningLaboratory: LifeformBuilding {

    public let id = 14_107
    public let name = "Cloning Laboratory"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 15_000, crystal: 15_000, deuterium: 5_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 12_000
    public let durationFactor = 1.20
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
        Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
        Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5),
        Requirement(requires: .lifeformBuilding(.antimatterConvector), level: 3)
    ]

    public init() {}
}
