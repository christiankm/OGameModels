//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol Building: Buildable, ScaledPriceable {

    /// The celestials the building can be built on.
    var celestialTypes: Set<CelestialType> { get }
}

extension Building {

    /// Whether the building can be built on the given celestial with the player's building and research levels.
    public func isAvailable(on celestialType: CelestialType, levels: [RequirementType: Level]) -> Bool {
        celestialTypes.contains(celestialType) && requirements.areSatisfied(by: levels)
    }

    /// The seconds it takes to build the given level. Demolishing a level takes as long.
    ///
    /// Levels 1 to 5 of every building except the Nanite Factory build faster.
    public func constructionTime(toLevel level: Level, roboticsFactory: Level, naniteFactory: Level, universeSpeed: Int) -> TimeInterval {
        let cost = costToLevel(level)
        let factories = 2_500 * Double(1 + roboticsFactory) * Double(universeSpeed) * pow(2, Double(naniteFactory))
        var seconds = Double(cost.metal + cost.crystal) / factories * 3_600

//        if id != BuildingType.naniteFactory.id, level < 6 {
//            seconds *= 2 / Double(8 - level)
//        }

        return max(1, seconds).rounded(.down)
    }
}
