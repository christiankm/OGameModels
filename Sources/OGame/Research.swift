//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol Research: Identifiable, Nameable, Buildable, ScaledPriceable {

    var id: GameId { get }
    var name: String { get }
    var requirements: [Requirement] { get }
}

// MARK: Availability

extension Research {

    /// Whether the research can be started on the given celestial.
    ///
    /// Research needs a planet with a research lab, every requirement met, and enough energy for the first level.
    /// - Parameters:
    ///   - levels: The player's building and research levels.
    ///   - energy: The energy available on the planet.
    public func isAvailable(on celestialType: CelestialType, levels: [RequirementType: Level], energy: Energy = 0) -> Bool {
        celestialType.isPlanet
            && levels[.researchLab, default: 0] > 0
            && energy >= baseCost.energy
            && requirements.allSatisfy { levels[$0.requires, default: 0] >= $0.level }
    }
}

// MARK: Construction time

extension Research {

    /// The seconds it takes to research the given level.
    ///
    /// The Technocrat officer and the Discoverer class each take 25% off.
    /// - Parameter universeSpeed: The universe speed multiplied by its research speed.
    public func constructionTime(
        toLevel level: Level,
        researchLab: Level,
        universeSpeed: Int,
        hasTechnocrat: Bool = false,
        characterClass: CharacterClass = .notSelected
    ) -> TimeInterval {
        let cost = costToLevel(level)
        var hours = Double(cost.metal + cost.crystal) / (1_000 * Double(1 + researchLab) * Double(universeSpeed))

        if hasTechnocrat {
            hours *= 0.75
        }
        if characterClass.isDiscoverer {
            hours *= 0.75
        }

        return max(1, hours * 3_600).rounded(.down)
    }
}
