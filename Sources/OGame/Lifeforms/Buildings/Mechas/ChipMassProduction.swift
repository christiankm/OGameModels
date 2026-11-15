//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ChipMassProduction: LifeformBuilding {

    public let id = 13_111
    public let name = "Chip Mass Production"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 55_000, crystal: 50_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 50_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
        Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1),
        Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 6),
        Requirement(requires: .lifeformBuilding(.quantumComputerCentre), level: 1)
    ]

    public init() {}
}
