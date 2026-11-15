//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CrystalStorage: StorageBuilding {

    public let id = 23
    public let name = "Crystal Storage"
    public let baseCost = Resources(metal: 1_000, crystal: 500)
    public let costIncreaseFactor = 2.0
    public let requirements: [Requirement] = []

    public init() {}
}
