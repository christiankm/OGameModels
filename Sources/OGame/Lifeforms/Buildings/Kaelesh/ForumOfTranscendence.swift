//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ForumOfTranscendence: LifeformBuilding {

    public let id = 14_105
    public let name = "Forum of Transcendence"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 60_000, crystal: 30_000, deuterium: 50_000, population: 100_000_000)
    public let costIncreaseFactor = 1.80
    public let populationIncreaseFactor = 1.10
    public let baseDuration: TimeInterval = 64_000
    public let durationFactor = 1.8
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
        Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1),
        Requirement(requires: .lifeformBuilding(.bioModifier), level: 5)
    ]

    public init() {}
}
