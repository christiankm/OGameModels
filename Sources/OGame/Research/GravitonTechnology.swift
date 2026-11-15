//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct GravitonTechnology: Research {

    public let id = 199
    public let name = "Graviton Technology"
    public let baseCost = Resources(energy: 300_000)
    public let costIncreaseFactor = 3.0
    public let requirements = [
        Requirement(requires: .researchLab, level: 12)
    ]

    public init() {}
}
