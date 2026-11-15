//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct MetalMine: Building, Demolishable {

    public let id = 1
    public let name = "Metal Mine"
    public let baseCost = Resources(metal: 60, crystal: 15)
    public let costIncreaseFactor = 1.5
    public let requirements: [Requirement] = []
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    /// The metal produced per hour, including the basic income every planet gets.
    /// - Parameters:
    ///   - productionRatio: The production setting for the mine, from 0 to 1.
    ///   - energyRatio: How much of the energy the mines need the planet has, from 0 to 1.
    public func production(
        level: Level,
        plasmaTechnology: Level,
        universeSpeed: Int,
        productionRatio: Double = 1,
        energyRatio: Double = 1
    ) -> Int {
        let basicIncome = 30 * Double(universeSpeed)
        let plasmaBonus = 1 + Double(plasmaTechnology) / 100
        let levelProduction = 30 * plasmaBonus * Double(universeSpeed) * Double(level) * pow(1.1, Double(level))
        return Int(levelProduction * productionRatio * energyRatio + basicIncome)
    }

    public func energyConsumption(level: Level) -> Int {
        Int((10 * Double(level) * pow(1.1, Double(level))).rounded(.up))
    }
}
