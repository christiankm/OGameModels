//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct BioModifier: LifeformBuilding {

    public let id = 14_109
    public let name = "Bio Modifier"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 87_500, crystal: 25_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 40_000
    public let durationFactor = 1.2
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
        Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1)
    ]

    public init() {}
}
