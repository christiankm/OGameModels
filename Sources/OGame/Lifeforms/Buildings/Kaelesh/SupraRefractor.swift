//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SupraRefractor: LifeformBuilding {

    public let id = 14_112
    public let name = "Suprarefractor"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 500_000, crystal: 250_000, deuterium: 250_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 95_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
        Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5),
        Requirement(requires: .lifeformBuilding(.antimatterConvector), level: 3),
        Requirement(requires: .lifeformBuilding(.cloningLaboratory), level: 4),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
        Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 5),
        Requirement(requires: .lifeformBuilding(.bioModifier), level: 6),
        Requirement(requires: .lifeformBuilding(.forumOfTranscendence), level: 5),
        Requirement(requires: .lifeformBuilding(.shipManufacturingHall), level: 5)
    ]

    public init() {}
}
