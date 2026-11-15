//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ChrysalisAccelerator: LifeformBuilding {

    public let id = 14_108
    public let name = "Chrysalis Accelerator"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 75_000, crystal: 25_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.05
    public let baseDuration: TimeInterval = 16_000
    public let durationFactor = 1.18
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1)
    ]

    public init() {}
}
