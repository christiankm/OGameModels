//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct RobotAssistants: LifeformResearch {

    public let id = 11_217
    public let name = "Robot Assistants"
    public let lifeform = Lifeform.humans
    public let baseCost = Resources(metal: 300_000, crystal: 180_000, deuterium: 120_000)
    public let costIncreaseFactor = 1.50
    public let baseDuration: TimeInterval = 11_000
    public let durationFactor = 1.3

    public init() {}
}
