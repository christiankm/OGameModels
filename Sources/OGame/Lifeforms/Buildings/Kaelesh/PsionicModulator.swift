//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct PsionicModulator: LifeformBuilding {

    public let id = 14_110
    public let name = "Psionic Modulator"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 150_000, crystal: 30_000, deuterium: 30_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 52_000
    public let durationFactor = 1.8
    public let requirements = [
        Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
        Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
        Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 2)
    ]

    public init() {}
}
