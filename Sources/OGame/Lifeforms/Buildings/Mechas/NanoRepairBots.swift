//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct NanoRepairBots: LifeformBuilding {

    public let id = 13_112
    public let name = "Nano Repair Bots"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000)
    public let costIncreaseFactor = 1.40
    public let baseDuration: TimeInterval = 95_000
    public let durationFactor = 1.4
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20),
        Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 5),
        Requirement(requires: .lifeformBuilding(.roboticsResearchCentre), level: 5),
        Requirement(requires: .lifeformBuilding(.highPerformanceTransformer), level: 4),
        Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 6),
        Requirement(requires: .lifeformBuilding(.quantumComputerCentre), level: 5),
        Requirement(requires: .lifeformBuilding(.chipMassProduction), level: 11)
    ]

    public init() {}
}
