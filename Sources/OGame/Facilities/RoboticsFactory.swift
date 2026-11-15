//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RoboticsFactory: Building, Demolishable {

    public let id = 14
    public let name = "Robotics Factory"
    public let baseCost = Resources(metal: 400, crystal: 120, deuterium: 200)
    public let costIncreaseFactor = 2.0
    public let requirements: [Requirement] = []
    public let celestialTypes: Set<CelestialType> = [.planet, .moon]

    public init() {}
}
