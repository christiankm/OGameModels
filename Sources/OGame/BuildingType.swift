//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// The resource buildings and facilities.
public enum BuildingType: GameId, Identifiable, Equatable, CaseIterable {
    case metalMine = 1
    case crystalMine = 2
    case deuteriumSynthesizer = 3
    case solarPlant = 4
    case fusionReactor = 12
    case metalStorage = 22
    case crystalStorage = 23
    case deuteriumTank = 24
    case roboticsFactory = 14
    case shipyard = 21
    case researchLab = 31
    case allianceDepot = 34
    case missileSilo = 44
    case naniteFactory = 15
    case terraformer = 33
    case spaceDock = 36
    case lunarBase = 41
    case sensorPhalanx = 42
    case jumpGate = 43

    public var id: GameId {
        rawValue
    }

    public var building: any Building {
        switch self {
        case .metalMine:
            return MetalMine()
        case .crystalMine:
            return CrystalMine()
        case .deuteriumSynthesizer:
            return DeuteriumSynthesizer()
        case .solarPlant:
            return SolarPlant()
        case .fusionReactor:
            return FusionReactor()
        case .metalStorage:
            return MetalStorage()
        case .crystalStorage:
            return CrystalStorage()
        case .deuteriumTank:
            return DeuteriumTank()
        case .roboticsFactory:
            return RoboticsFactory()
        case .shipyard:
            return Shipyard()
        case .researchLab:
            return ResearchLab()
        case .allianceDepot:
            return AllianceDepot()
        case .missileSilo:
            return MissileSilo()
        case .naniteFactory:
            return NaniteFactory()
        case .terraformer:
            return Terraformer()
        case .spaceDock:
            return SpaceDock()
        case .lunarBase:
            return LunarBase()
        case .sensorPhalanx:
            return SensorPhalanx()
        case .jumpGate:
            return JumpGate()
        }
    }
}
