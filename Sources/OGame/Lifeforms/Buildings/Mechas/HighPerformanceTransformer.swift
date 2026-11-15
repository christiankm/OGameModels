//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighPerformanceTransformer: LifeformBuilding {

    public let id = 13_107
    public let name = "High Performance Transformer"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 35_000, crystal: 15_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.4
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 17),
        Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20),
        Requirement(requires: .lifeformBuilding(.roboticsResearchCentre), level: 5),
        Requirement(requires: .lifeformBuilding(.automatisedAssemblyCentre), level: 3)
    ]

    public init() {}
}
