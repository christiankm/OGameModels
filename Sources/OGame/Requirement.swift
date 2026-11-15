//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct Requirement: Equatable {
    public let requires: RequirementType
    public let level: Level

    public init(requires: RequirementType, level: Level) {
        self.requires = requires
        self.level = level
    }

    public static func == (lhs: Requirement, rhs: Requirement) -> Bool {
        lhs.requires == rhs.requires &&
            lhs.level == rhs.level
    }
}

/// A building, technology or other requirement that something else requires.
public enum RequirementType: Hashable {
    // Character Classes
    case generalClass
    case collectorClass
    case discovererClass

    // Buildings
    case deuteriumSynthesizer
    case roboticsFactory
    case shipyard
    case researchLab
    case naniteFactory
    case lunarBase
    case missileSilo

    // Research
    case energyTechnology
    case computerTechnology
    case espionageTechnology
    case weaponsTechnology
    case armourTechnology
    case shieldingTechnology
    case hyperspaceTechnology
    case laserTechnology
    case ionTechnology
    case plasmaTechnology
    case gravitonTechnology
    case combustionDrive
    case impulseDrive
    case hyperspaceDrive

    // Lifeform Buildings
    case lifeformBuilding(LifeformBuildingType)
}

extension Array where Element == Requirement {

    /// Whether the given building and research levels meet every requirement.
    public func areSatisfied(by levels: [RequirementType: Level]) -> Bool {
        allSatisfy { levels[$0.requires, default: 0] >= $0.level }
    }
}
