//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A building that can be torn down. The Lunar Base and Terraformer can't.
public protocol Demolishable: ScaledPriceable {

    /// The cost of tearing down the given level, with 4% off per level of ion technology.
    func costToDemolish(level: Level, ionTechnology: Level) -> Resources
}

extension Demolishable {

    public func costToDemolish(level: Level, ionTechnology: Level) -> Resources {
        let ionTechnologyFactor = 1 - 0.04 * Double(ionTechnology)

        func cost(_ baseCost: Int) -> Int {
            let levelCost = (Double(baseCost) * pow(costIncreaseFactor, Double(level - 1))).rounded(.down)
            return Int(levelCost * ionTechnologyFactor)
        }

        return Resources(
            metal: cost(baseCost.metal),
            crystal: cost(baseCost.crystal),
            deuterium: cost(baseCost.deuterium),
            energy: cost(baseCost.energy)
        )
    }
}
