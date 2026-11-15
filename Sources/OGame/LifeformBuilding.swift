//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A building that belongs to one of the four lifeforms.
public protocol LifeformBuilding: Buildable, ScaledPriceable {

    var id: GameId { get }
    var lifeform: Lifeform { get }

    /// How much the energy cost grows per level. Defaults to 1.
    var energyIncreaseFactor: Double { get }

    /// How much the population cost grows per level. Defaults to 1.
    var populationIncreaseFactor: Double { get }

    /// The seconds the first level would take without any factories.
    var baseDuration: TimeInterval { get }

    /// How much the build time grows per level.
    var durationFactor: Double { get }
}

extension LifeformBuilding {

    public var energyIncreaseFactor: Double {
        1
    }

    public var populationIncreaseFactor: Double {
        1
    }

    /// Metal, crystal, deuterium and energy are multiplied by the level too. Population is not.
    public func costToLevel(_ level: Level) -> Resources {
        func cost(_ baseCost: Int, factor: Double) -> Int {
            Int(Double(baseCost) * pow(factor, Double(level - 1)) * Double(level))
        }

        return Resources(
            metal: cost(baseCost.metal, factor: costIncreaseFactor),
            crystal: cost(baseCost.crystal, factor: costIncreaseFactor),
            deuterium: cost(baseCost.deuterium, factor: costIncreaseFactor),
            energy: cost(baseCost.energy, factor: energyIncreaseFactor),
            population: Int(Double(baseCost.population) * pow(populationIncreaseFactor, Double(level - 1)))
        )
    }

    /// Lifeform buildings can only be built on planets.
    public func isAvailable(on celestialType: CelestialType, levels: [RequirementType: Level]) -> Bool {
        celestialType.isPlanet && requirements.areSatisfied(by: levels)
    }

    /// The seconds it takes to build the given level.
    public func constructionTime(toLevel level: Level, roboticsFactory: Level, naniteFactory: Level, universeSpeed: Int) -> TimeInterval {
        let factories = Double(1 + roboticsFactory) * pow(2, Double(naniteFactory))
        let seconds = Double(level) * baseDuration * pow(durationFactor, Double(level)) / factories / Double(universeSpeed)
        return max(1, seconds).rounded(.down)
    }
}
