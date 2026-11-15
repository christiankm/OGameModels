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
public enum RequirementType {
    // Character Classes
    case generalClass
    case collectorClass
    case discovererClass

    // Buildings
    case deuteriumSynthesizer
    case shipyard
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
    case metropolis
}
