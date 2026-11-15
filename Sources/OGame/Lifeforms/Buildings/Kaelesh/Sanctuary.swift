//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Sanctuary: LifeformBuilding {

    public let id = 14_101
    public let name = "Sanctuary"
    public let lifeform = Lifeform.kaelesh
    public let baseCost = Resources(metal: 4, crystal: 3)
    public let costIncreaseFactor = 1.21
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.22
    public let requirements: [Requirement] = []

    public init() {}
}
