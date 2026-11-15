//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct QuantumComputerCentre: LifeformBuilding {

    public let id = 13_105
    public let name = "Quantum Computer Centre"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 130_000_000)
    public let costIncreaseFactor = 1.80
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 64_000
    public let durationFactor = 1.7
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
        Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1),
        Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 5)
    ]

    public init() {}
}
