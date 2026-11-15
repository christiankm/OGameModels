//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public enum ResearchType: GameId, Identifiable, Equatable, CaseIterable {
    case energyTechnology = 113
    case laserTechnology = 120
    case ionTechnology = 121
    case hyperspaceTechnology = 114
    case plasmaTechnology = 122
    case combustionDrive = 115
    case impulseDrive = 117
    case hyperspaceDrive = 118
    case espionageTechnology = 106
    case computerTechnology = 108
    case astrophysics = 124
    case intergalacticResearchNetwork = 123
    case gravitonTechnology = 199
    case weaponsTechnology = 109
    case shieldingTechnology = 110
    case armourTechnology = 111

    public var id: GameId {
        rawValue
    }

    public var research: any Research {
        switch self {
        case .energyTechnology:
            return EnergyTechnology()
        case .laserTechnology:
            return LaserTechnology()
        case .ionTechnology:
            return IonTechnology()
        case .hyperspaceTechnology:
            return HyperspaceTechnology()
        case .plasmaTechnology:
            return PlasmaTechnology()
        case .combustionDrive:
            return CombustionDrive()
        case .impulseDrive:
            return ImpulseDrive()
        case .hyperspaceDrive:
            return HyperspaceDrive()
        case .espionageTechnology:
            return EspionageTechnology()
        case .computerTechnology:
            return ComputerTechnology()
        case .astrophysics:
            return Astrophysics()
        case .intergalacticResearchNetwork:
            return IntergalacticResearchNetwork()
        case .gravitonTechnology:
            return GravitonTechnology()
        case .weaponsTechnology:
            return WeaponsTechnology()
        case .shieldingTechnology:
            return ShieldingTechnology()
        case .armourTechnology:
            return ArmourTechnology()
        }
    }
}
