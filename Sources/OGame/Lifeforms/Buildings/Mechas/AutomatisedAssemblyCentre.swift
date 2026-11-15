//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AutomatisedAssemblyCentre: LifeformBuilding {

    public let id = 13_106
    public let name = "Automatised Assembly Centre"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 7_500, crystal: 7_000, deuterium: 1_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 2_000
    public let durationFactor = 1.3
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.assemblyLine), level: 17),
        Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20),
        Requirement(requires: .lifeformBuilding(.roboticsResearchCentre), level: 5)
    ]

    public init() {}
}
