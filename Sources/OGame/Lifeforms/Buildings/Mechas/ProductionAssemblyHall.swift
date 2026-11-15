//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ProductionAssemblyHall: LifeformBuilding {

    public let id = 13_109
    public let name = "Production Assembly Hall"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 100_000, crystal: 10_000, deuterium: 3_000)
    public let costIncreaseFactor = 1.14
    public let baseDuration: TimeInterval = 40_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
        Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1)
    ]

    public init() {}
}
