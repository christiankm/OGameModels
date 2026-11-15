//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A research that belongs to one of the four lifeforms.
public protocol LifeformResearch: Buildable, ScaledPriceable {

    var id: GameId { get }
    var lifeform: Lifeform { get }

    /// The seconds the first level would take.
    var baseDuration: TimeInterval { get }

    /// How much the research time grows per level.
    var durationFactor: Double { get }
}

extension LifeformResearch {

    /// Lifeform researches are unlocked by research centre slots, not by requirements.
    public var requirements: [Requirement] {
        []
    }

    public func costToLevel(_ level: Level) -> Resources {
        costToLevel(level, costReduction: 0)
    }

    /// The cost of the given level, multiplied by the level, with a lifeform bonus taken off.
    /// - Parameter costReduction: The share of the cost the planet's lifeform bonuses take off, from 0 to 1.
    public func costToLevel(_ level: Level, costReduction: Double) -> Resources {
        func cost(_ baseCost: Int) -> Int {
            let cost = Double(baseCost) * pow(costIncreaseFactor, Double(level - 1)) * Double(level)
            return Int(cost - cost * costReduction)
        }

        return Resources(
            metal: cost(baseCost.metal),
            crystal: cost(baseCost.crystal),
            deuterium: cost(baseCost.deuterium)
        )
    }

    /// The seconds it takes to research the given level.
    public func constructionTime(toLevel level: Level, universeSpeed: Int) -> TimeInterval {
        let seconds = Double(level) * baseDuration * pow(durationFactor, Double(level)) / Double(universeSpeed)
        return max(1, seconds).rounded(.down)
    }
}
