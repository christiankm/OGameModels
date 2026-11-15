//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ShipManufacturingHall: LifeformBuilding {

    public let id = 14_111
    public let name = "Ship Manufacturing Hall"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 75_000, crystal: 50_000, deuterium: 55_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 90_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
        Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1),
        Requirement(requires: .lifeformBuilding(.bioModifier), level: 6),
        Requirement(requires: .lifeformBuilding(.forumOfTranscendence), level: 1)
    ]

    public init() {}
}
