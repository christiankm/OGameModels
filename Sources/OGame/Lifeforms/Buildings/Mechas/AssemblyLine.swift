//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct AssemblyLine: LifeformBuilding {

    public let id = 13_101
    public let name = "Assembly Line"
    public let lifeform = Lifeform.mechas
    public let baseCost = Resources(metal: 6, crystal: 2)
    public let costIncreaseFactor = 1.21
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.22
    public let requirements: [Requirement] = []

    public init() {}
}
