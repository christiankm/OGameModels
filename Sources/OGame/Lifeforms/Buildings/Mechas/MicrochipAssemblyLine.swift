//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MicrochipAssemblyLine: LifeformBuilding {

    public let id = 13_108
    public let name = "Microchip Assembly Line"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 50_000, crystal: 20_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.07
    public let baseDuration: TimeInterval = 12_000
    public let durationFactor = 1.17
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
        Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1)
    ]

    public init() {}
}
