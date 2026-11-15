//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct HyperspaceDrive: Research {

    public let id = 118
    public let name = "Hyperspace Drive"
    public let baseCost = Resources(metal: 10_000, crystal: 20_000, deuterium: 6_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .hyperspaceTechnology, level: 3)
    ]

    public init() {}
}
