//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A structure that has a cost that scales with the level.
/// This is most common for buildings and research.
public protocol ScaledPriceable {

    var baseCost: Resources { get }
    var costIncreaseFactor: Double { get }

    /// Returns the cost to upgrade the building by one level to the given level.
    /// - Parameter level: The level to upgrade to.
    /// - Returns: The cost to upgrade to this level.
    func costToLevel(_ level: Level) -> Resources
}

extension ScaledPriceable {

    public func costToLevel(_ level: Level) -> Resources {
        Resources(
            metal: scaledCost(baseCost.metal, toLevel: level),
            crystal: scaledCost(baseCost.crystal, toLevel: level),
            deuterium: scaledCost(baseCost.deuterium, toLevel: level),
            energy: scaledCost(baseCost.energy, toLevel: level),
            population: scaledCost(baseCost.population, toLevel: level),
            food: scaledCost(baseCost.food, toLevel: level)
        )
    }

    /// Scales a base cost to the given level, rounded down.
    internal func scaledCost(_ baseCost: Int, toLevel level: Level, factor: Double? = nil) -> Int {
        guard level > 1 else { return baseCost }

        return Int(Double(baseCost) * pow(factor ?? costIncreaseFactor, Double(level - 1)))
    }
}
