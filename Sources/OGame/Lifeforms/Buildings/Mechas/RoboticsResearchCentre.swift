//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RoboticsResearchCentre: LifeformBuilding {

    public let id = 13_103
    public let name = "Robotics Research Centre"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 30_000, crystal: 20_000, deuterium: 10_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.25
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 17),
        Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20)
    ]

    public init() {}
}
