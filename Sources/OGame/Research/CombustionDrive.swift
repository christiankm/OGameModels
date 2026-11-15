//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CombustionDrive: Research {

    public let id = 115
    public let name = "Combustion Drive"
    public let baseCost = Resources(metal: 400, deuterium: 600)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .energyTechnology, level: 1)
    ]

    public init() {}
}
