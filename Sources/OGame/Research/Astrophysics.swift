//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Astrophysics: Research {

    public let id = 124
    public let name = "Astrophysics"
    public let baseCost = Resources(metal: 4_000, crystal: 8_000, deuterium: 4_000)
    public let costIncreaseFactor = 1.75
    public let requirements = [
        Requirement(requires: .espionageTechnology, level: 4),
        Requirement(requires: .impulseDrive, level: 3)
    ]

    public init() {}

    /// Astrophysics rounds each resource to the nearest hundred.
    public func costToLevel(_ level: Level) -> Resources {
        Resources(
            metal: roundedCost(baseCost.metal, toLevel: level),
            crystal: roundedCost(baseCost.crystal, toLevel: level),
            deuterium: roundedCost(baseCost.deuterium, toLevel: level),
            energy: roundedCost(baseCost.energy, toLevel: level)
        )
    }

    private func roundedCost(_ baseCost: Int, toLevel level: Level) -> Int {
        let cost = Double(baseCost) * pow(costIncreaseFactor, Double(level - 1))
        return Int((cost / 100).rounded()) * 100
    }
}
