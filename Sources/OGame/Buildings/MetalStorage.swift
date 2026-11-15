//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MetalStorage: StorageBuilding {

    public let id = 22
    public let name = "Metal Storage"
    public let baseCost = Resources(metal: 1_000)
    public let costIncreaseFactor = 2.0
    public let requirements: [Requirement] = []

    public init() {}
}
