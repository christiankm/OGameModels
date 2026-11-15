//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SpaceDock: Building, Demolishable {

    public let id = 36
    public let name = "Space Dock"
    public let baseCost = Resources(metal: 200, deuterium: 50, energy: 50)
    public let costIncreaseFactor = 5.0
    public let requirements = [
        Requirement(requires: .shipyard, level: 2)
    ]
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    public func costToLevel(_ level: Level) -> Resources {
        Resources(
            metal: scaledCost(baseCost.metal, toLevel: level),
            crystal: scaledCost(baseCost.crystal, toLevel: level),
            deuterium: scaledCost(baseCost.deuterium, toLevel: level),
            energy: scaledCost(baseCost.energy, toLevel: level, factor: 2.5)
        )
    }
}
