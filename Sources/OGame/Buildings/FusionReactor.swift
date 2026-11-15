//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct FusionReactor: Building, Demolishable {

    public let id = 12
    public let name = "Fusion Reactor"
    public let baseCost = Resources(metal: 900, crystal: 360, deuterium: 180)
    public let costIncreaseFactor = 1.8
    public let requirements = [
        Requirement(requires: .deuteriumSynthesizer, level: 5),
        Requirement(requires: .energyTechnology, level: 3)
    ]
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    /// The energy produced at the given level, with 1% more per level of energy technology.
    public func production(level: Level, energyTechnology: Level) -> Int {
        let efficiency = 1.05 + Double(energyTechnology) * 0.01
        return Int((30 * Double(level) * pow(efficiency, Double(level))).rounded())
    }

    /// The deuterium the reactor burns per hour.
    /// - Parameter productionRatio: The production setting for the reactor, from 0 to 1.
    public func fuelConsumption(level: Level, universeSpeed: Int, productionRatio: Double = 1) -> Int {
        let consumption = 10 * Double(universeSpeed) * Double(level) * pow(1.1, Double(level)) * productionRatio
        return Int(consumption.rounded(.up))
    }
}
