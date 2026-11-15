//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct DeuteriumSynthesizer: Building, Demolishable {

    public let id = 3
    public let name = "Deuterium Synthesizer"
    public let baseCost = Resources(metal: 225, crystal: 75)
    public let costIncreaseFactor = 1.5
    public let requirements: [Requirement] = []
    public var celestialTypes: Set<CelestialType> {
        [.planet]
    }

    public init() {}

    /// The deuterium produced per hour. Colder planets produce more.
    /// - Parameters:
    ///   - productionRatio: The production setting for the synthesizer, from 0 to 1.
    ///   - energyRatio: How much of the energy the mines need the planet has, from 0 to 1.
    public func production(
        level: Level,
        plasmaTechnology: Level,
        temperature: Temperature,
        universeSpeed: Int,
        productionRatio: Double = 1,
        energyRatio: Double = 1
    ) -> Int {
        let plasmaBonus = 1 + Double(plasmaTechnology) * 0.0033
        let temperatureFactor = -0.004 * Double(temperature.mean) + 1.36
        let production = 10 * plasmaBonus * Double(level) * pow(1.1, Double(level)) * temperatureFactor
        return Int((production * Double(universeSpeed) * productionRatio * energyRatio).rounded())
    }

    public func energyConsumption(level: Level) -> Int {
        Int((20 * Double(level) * pow(1.1, Double(level))).rounded(.up))
    }
}
