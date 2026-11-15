//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SensorPhalanx: Building, Demolishable {

    public let id = 42
    public let name = "Sensor Phalanx"
    public let baseCost = Resources(metal: 20_000, crystal: 40_000, deuterium: 20_000)
    public let costIncreaseFactor = 2.0
    public let requirements = [
        Requirement(requires: .lunarBase, level: 1)
    ]
    public let celestialTypes: Set<CelestialType> = [.moon]
    public let pricePerScan = Resources(deuterium: 5_000)

    public init() {}

    /// The number of systems the phalanx reaches in each direction. The Discoverer class reaches 20% further.
    public func range(level: Level, characterClass: CharacterClass = .notSelected) -> Int {
        let range = level < 2 ? level : level * level - 1

        if characterClass.isDiscoverer {
            return range + Int((0.2 * Double(range)).rounded())
        } else {
            return range
        }
    }
}
