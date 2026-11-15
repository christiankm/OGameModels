//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct ResidentialSector: LifeformBuilding {

    public let id = 11_101
    public let name = "Residential Sector"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 7, crystal: 2)
    public let costIncreaseFactor = 1.20
    public let baseDuration: TimeInterval = 40
    public let durationFactor = 1.21
    public let requirements: [Requirement] = []

    public init() {}
}
