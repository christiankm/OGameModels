//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// The buildings of the four lifeforms.
public enum LifeformBuildingType: GameId, Identifiable, Equatable, Hashable, CaseIterable {
    case residentialSector = 11_101
    case biosphereFarm = 11_102
    case researchCentre = 11_103
    case academyOfSciences = 11_104
    case neuroCalibrationCentre = 11_105
    case highEnergySmelting = 11_106
    case foodSilo = 11_107
    case fusionPoweredProduction = 11_108
    case skyscraper = 11_109
    case biotechLab = 11_110
    case metropolis = 11_111
    case planetaryShield = 11_112
    case meditationEnclave = 12_101
    case crystalFarm = 12_102
    case runeTechnologium = 12_103
    case runeForge = 12_104
    case oriktorium = 12_105
    case magmaForge = 12_106
    case disruptionChamber = 12_107
    case megalith = 12_108
    case crystalRefinery = 12_109
    case deuteriumSynthesiser = 12_110
    case mineralResearchCentre = 12_111
    case advancedRecyclingPlant = 12_112
    case assemblyLine = 13_101
    case fusionCellFactory = 13_102
    case roboticsResearchCentre = 13_103
    case updateNetwork = 13_104
    case quantumComputerCentre = 13_105
    case automatisedAssemblyCentre = 13_106
    case highPerformanceTransformer = 13_107
    case microchipAssemblyLine = 13_108
    case productionAssemblyHall = 13_109
    case highPerformanceSynthesiser = 13_110
    case chipMassProduction = 13_111
    case nanoRepairBots = 13_112
    case sanctuary = 14_101
    case antimatterCondenser = 14_102
    case vortexChamber = 14_103
    case hallsOfRealisation = 14_104
    case forumOfTranscendence = 14_105
    case antimatterConvector = 14_106
    case cloningLaboratory = 14_107
    case chrysalisAccelerator = 14_108
    case bioModifier = 14_109
    case psionicModulator = 14_110
    case shipManufacturingHall = 14_111
    case supraRefractor = 14_112

    public var id: GameId {
        rawValue
    }

    public var lifeform: Lifeform {
        building.lifeform
    }

    public var building: any LifeformBuilding {
        switch self {
        case .residentialSector:
            return ResidentialSector()
        case .biosphereFarm:
            return BiosphereFarm()
        case .researchCentre:
            return ResearchCentre()
        case .academyOfSciences:
            return AcademyOfSciences()
        case .neuroCalibrationCentre:
            return NeuroCalibrationCentre()
        case .highEnergySmelting:
            return HighEnergySmelting()
        case .foodSilo:
            return FoodSilo()
        case .fusionPoweredProduction:
            return FusionPoweredProduction()
        case .skyscraper:
            return Skyscraper()
        case .biotechLab:
            return BiotechLab()
        case .metropolis:
            return Metropolis()
        case .planetaryShield:
            return PlanetaryShield()
        case .meditationEnclave:
            return MeditationEnclave()
        case .crystalFarm:
            return CrystalFarm()
        case .runeTechnologium:
            return RuneTechnologium()
        case .runeForge:
            return RuneForge()
        case .oriktorium:
            return Oriktorium()
        case .magmaForge:
            return MagmaForge()
        case .disruptionChamber:
            return DisruptionChamber()
        case .megalith:
            return Megalith()
        case .crystalRefinery:
            return CrystalRefinery()
        case .deuteriumSynthesiser:
            return DeuteriumSynthesiser()
        case .mineralResearchCentre:
            return MineralResearchCentre()
        case .advancedRecyclingPlant:
            return AdvancedRecyclingPlant()
        case .assemblyLine:
            return AssemblyLine()
        case .fusionCellFactory:
            return FusionCellFactory()
        case .roboticsResearchCentre:
            return RoboticsResearchCentre()
        case .updateNetwork:
            return UpdateNetwork()
        case .quantumComputerCentre:
            return QuantumComputerCentre()
        case .automatisedAssemblyCentre:
            return AutomatisedAssemblyCentre()
        case .highPerformanceTransformer:
            return HighPerformanceTransformer()
        case .microchipAssemblyLine:
            return MicrochipAssemblyLine()
        case .productionAssemblyHall:
            return ProductionAssemblyHall()
        case .highPerformanceSynthesiser:
            return HighPerformanceSynthesiser()
        case .chipMassProduction:
            return ChipMassProduction()
        case .nanoRepairBots:
            return NanoRepairBots()
        case .sanctuary:
            return Sanctuary()
        case .antimatterCondenser:
            return AntimatterCondenser()
        case .vortexChamber:
            return VortexChamber()
        case .hallsOfRealisation:
            return HallsOfRealisation()
        case .forumOfTranscendence:
            return ForumOfTranscendence()
        case .antimatterConvector:
            return AntimatterConvector()
        case .cloningLaboratory:
            return CloningLaboratory()
        case .chrysalisAccelerator:
            return ChrysalisAccelerator()
        case .bioModifier:
            return BioModifier()
        case .psionicModulator:
            return PsionicModulator()
        case .shipManufacturingHall:
            return ShipManufacturingHall()
        case .supraRefractor:
            return SupraRefractor()
        }
    }
}
