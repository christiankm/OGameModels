//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ComputerTechnology: Research {

    public let id = 108
    public let name = "Computer Technology"
    public let baseCost = Resources(crystal: 400, deuterium: 600)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 1)
    ]

    public init() {}
}
