//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct NaniteFactory: Building, Demolishable {

    public let id = 15
    public let name = "Nanite Factory"
    public let baseCost = Resources(metal: 1_000_000, crystal: 500_000, deuterium: 100_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .roboticsFactory, level: 10),
        Requirement(requires: .computerTechnology, level: 10)
    ]
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}
}
