//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct CrystalMine: Building, Demolishable {

    public let id = 2
    public let name = "Crystal Mine"
    public let baseCost = Resources(metal: 48, crystal: 24)
    public let costIncreaseFactor = 1.6
    public let requirements: [Requirement] = []
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    /// The crystal produced per hour, including the basic income every planet gets.
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
        let basicIncome = 15 * Double(universeSpeed)
        let plasmaBonus = 1 + Double(plasmaTechnology) * 0.0066
        let levelProduction = 20 * Double(universeSpeed) * plasmaBonus * Double(level) * pow(1.1, Double(level))
        return Int(levelProduction * productionRatio * energyRatio + basicIncome)
    }

    public func energyConsumption(level: Level) -> Int {
        Int((10 * Double(level) * pow(1.1, Double(level))).rounded(.up))
    }
}
