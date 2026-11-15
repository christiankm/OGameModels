//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct VortexChamber: LifeformBuilding {

    public let id = 14_103
    public let name = "Vortex Chamber"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 20_000, crystal: 20_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.30
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.25
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
        Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21)
    ]

    public init() {}
}
