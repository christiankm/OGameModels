//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HighPerformanceSynthesiser: LifeformBuilding {

    public let id = 13_110
    public let name = "High Performance Synthesiser"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 100_000, crystal: 40_000, deuterium: 20_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 52_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
        Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 2)
    ]

    public init() {}
}
