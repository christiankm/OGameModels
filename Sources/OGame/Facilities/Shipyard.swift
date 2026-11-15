//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Shipyard: Building, Demolishable {

    public let id = 21
    public let name = "Shipyard"
    public let baseCost = Resources(metal: 400, crystal: 200, deuterium: 100)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .roboticsFactory, level: 2)
    ]
    public let celestialTypes: Set<CelestialType> = [.planet, .moon]

    public init() {}
}
