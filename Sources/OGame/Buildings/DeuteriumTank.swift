//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DeuteriumTank: StorageBuilding {

    public let id = 24
    public let name = "Deuterium Tank"
    public let baseCost = Resources(metal: 1_000, crystal: 1_000)
    public let costIncreaseFactor = 2.0
    public let requirements: [Requirement] = []

    public init() {}
}
