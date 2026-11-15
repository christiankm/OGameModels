//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SolarPlant: Building, Demolishable {

    public let id = 4
    public let name = "Solar Plant"
    public let baseCost = Resources(metal: 75, crystal: 30)
    public let costIncreaseFactor = 1.5
    public let requirements: [Requirement] = []
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    /// The energy produced at the given level.
    public func production(level: Level) -> Int {
        Int((20 * Double(level) * pow(1.1, Double(level))).rounded(.down))
    }
}
