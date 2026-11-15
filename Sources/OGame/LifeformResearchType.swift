//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// The researches of the four lifeforms.
public enum LifeformResearchType: GameId, Identifiable, Equatable, Hashable, CaseIterable {
    case intergalacticEnvoys = 11_201
    case highPerformanceExtractors = 11_202
    case fusionDrives = 11_203
    case stealthFieldGenerator = 11_204
    case orbitalDen = 11_205
    case researchAI = 11_206
    case highPerformanceTerraformer = 11_207
    case enhancedProductionTechnologies = 11_208
    case lightFighterMkII = 11_209
    case cruiserMkII = 11_210
    case improvedLabTechnology = 11_211
    case plasmaTerraformer = 11_212
    case lowTemperatureDrives = 11_213
    case bomberMkII = 11_214
    case destroyerMkII = 11_215
    case battlecruiserMkII = 11_216
    case robotAssistants = 11_217
    case supercomputer = 11_218
    case volcanicBatteries = 12_201
    case acousticScanning = 12_202
    case highEnergyPumpSystems = 12_203
    case cargoHoldExpansionCivilianShips = 12_204
    case magmaPoweredProduction = 12_205
    case geothermalPowerPlants = 12_206
    case depthSounding = 12_207
    case ionCrystalEnhancementHeavyFighter = 12_208
    case improvedStellarator = 12_209
    case hardenedDiamondDrillHeads = 12_210
    case seismicMiningTechnology = 12_211
    case magmaPoweredPumpSystems = 12_212
    case ionCrystalModules = 12_213
    case optimisedSiloConstructionMethod = 12_214
    case diamondEnergyTransmitter = 12_215
    case obsidianShieldReinforcement = 12_216
    case runeShields = 12_217
    case rocktalCollectorEnhancement = 12_218
    case catalyserTechnology = 13_201
    case plasmaDrive = 13_202
    case efficiencyModule = 13_203
    case depotAI = 13_204
    case generalOverhaulLightFighter = 13_205
    case automatedTransportLines = 13_206
    case improvedDroneAI = 13_207
    case experimentalRecyclingTechnology = 13_208
    case generalOverhaulCruiser = 13_209
    case slingshotAutopilot = 13_210
    case highTemperatureSuperconductors = 13_211
    case generalOverhaulBattleship = 13_212
    case artificialSwarmIntelligence = 13_213
    case generalOverhaulBattlecruiser = 13_214
    case generalOverhaulBomber = 13_215
    case generalOverhaulDestroyer = 13_216
    case experimentalWeaponsTechnology = 13_217
    case mechanGeneralEnhancement = 13_218
    case heatRecovery = 14_201
    case sulphideProcess = 14_202
    case psionicNetwork = 14_203
    case telekineticTractorBeam = 14_204
    case enhancedSensorTechnology = 14_205
    case neuromodalCompressor = 14_206
    case neuroInterface = 14_207
    case interplanetaryAnalysisNetwork = 14_208
    case overclockingHeavyFighter = 14_209
    case telekineticDrive = 14_210
    case sixthSense = 14_211
    case psychoharmoniser = 14_212
    case efficientSwarmIntelligence = 14_213
    case overclockingLargeCargo = 14_214
    case gravitationSensors = 14_215
    case overclockingBattleship = 14_216
    case psionicShieldMatrix = 14_217
    case kaeleshDiscovererEnhancement = 14_218

    public var id: GameId {
        rawValue
    }

    public var lifeform: Lifeform {
        research.lifeform
    }

    public var research: any LifeformResearch {
        switch self {
        case .intergalacticEnvoys:
            return IntergalacticEnvoys()
        case .highPerformanceExtractors:
            return HighPerformanceExtractors()
        case .fusionDrives:
            return FusionDrives()
        case .stealthFieldGenerator:
            return StealthFieldGenerator()
        case .orbitalDen:
            return OrbitalDen()
        case .researchAI:
            return ResearchAI()
        case .highPerformanceTerraformer:
            return HighPerformanceTerraformer()
        case .enhancedProductionTechnologies:
            return EnhancedProductionTechnologies()
        case .lightFighterMkII:
            return LightFighterMkII()
        case .cruiserMkII:
            return CruiserMkII()
        case .improvedLabTechnology:
            return ImprovedLabTechnology()
        case .plasmaTerraformer:
            return PlasmaTerraformer()
        case .lowTemperatureDrives:
            return LowTemperatureDrives()
        case .bomberMkII:
            return BomberMkII()
        case .destroyerMkII:
            return DestroyerMkII()
        case .battlecruiserMkII:
            return BattlecruiserMkII()
        case .robotAssistants:
            return RobotAssistants()
        case .supercomputer:
            return Supercomputer()
        case .volcanicBatteries:
            return VolcanicBatteries()
        case .acousticScanning:
            return AcousticScanning()
        case .highEnergyPumpSystems:
            return HighEnergyPumpSystems()
        case .cargoHoldExpansionCivilianShips:
            return CargoHoldExpansionCivilianShips()
        case .magmaPoweredProduction:
            return MagmaPoweredProduction()
        case .geothermalPowerPlants:
            return GeothermalPowerPlants()
        case .depthSounding:
            return DepthSounding()
        case .ionCrystalEnhancementHeavyFighter:
            return IonCrystalEnhancementHeavyFighter()
        case .improvedStellarator:
            return ImprovedStellarator()
        case .hardenedDiamondDrillHeads:
            return HardenedDiamondDrillHeads()
        case .seismicMiningTechnology:
            return SeismicMiningTechnology()
        case .magmaPoweredPumpSystems:
            return MagmaPoweredPumpSystems()
        case .ionCrystalModules:
            return IonCrystalModules()
        case .optimisedSiloConstructionMethod:
            return OptimisedSiloConstructionMethod()
        case .diamondEnergyTransmitter:
            return DiamondEnergyTransmitter()
        case .obsidianShieldReinforcement:
            return ObsidianShieldReinforcement()
        case .runeShields:
            return RuneShields()
        case .rocktalCollectorEnhancement:
            return RocktalCollectorEnhancement()
        case .catalyserTechnology:
            return CatalyserTechnology()
        case .plasmaDrive:
            return PlasmaDrive()
        case .efficiencyModule:
            return EfficiencyModule()
        case .depotAI:
            return DepotAI()
        case .generalOverhaulLightFighter:
            return GeneralOverhaulLightFighter()
        case .automatedTransportLines:
            return AutomatedTransportLines()
        case .improvedDroneAI:
            return ImprovedDroneAI()
        case .experimentalRecyclingTechnology:
            return ExperimentalRecyclingTechnology()
        case .generalOverhaulCruiser:
            return GeneralOverhaulCruiser()
        case .slingshotAutopilot:
            return SlingshotAutopilot()
        case .highTemperatureSuperconductors:
            return HighTemperatureSuperconductors()
        case .generalOverhaulBattleship:
            return GeneralOverhaulBattleship()
        case .artificialSwarmIntelligence:
            return ArtificialSwarmIntelligence()
        case .generalOverhaulBattlecruiser:
            return GeneralOverhaulBattlecruiser()
        case .generalOverhaulBomber:
            return GeneralOverhaulBomber()
        case .generalOverhaulDestroyer:
            return GeneralOverhaulDestroyer()
        case .experimentalWeaponsTechnology:
            return ExperimentalWeaponsTechnology()
        case .mechanGeneralEnhancement:
            return MechanGeneralEnhancement()
        case .heatRecovery:
            return HeatRecovery()
        case .sulphideProcess:
            return SulphideProcess()
        case .psionicNetwork:
            return PsionicNetwork()
        case .telekineticTractorBeam:
            return TelekineticTractorBeam()
        case .enhancedSensorTechnology:
            return EnhancedSensorTechnology()
        case .neuromodalCompressor:
            return NeuromodalCompressor()
        case .neuroInterface:
            return NeuroInterface()
        case .interplanetaryAnalysisNetwork:
            return InterplanetaryAnalysisNetwork()
        case .overclockingHeavyFighter:
            return OverclockingHeavyFighter()
        case .telekineticDrive:
            return TelekineticDrive()
        case .sixthSense:
            return SixthSense()
        case .psychoharmoniser:
            return Psychoharmoniser()
        case .efficientSwarmIntelligence:
            return EfficientSwarmIntelligence()
        case .overclockingLargeCargo:
            return OverclockingLargeCargo()
        case .gravitationSensors:
            return GravitationSensors()
        case .overclockingBattleship:
            return OverclockingBattleship()
        case .psionicShieldMatrix:
            return PsionicShieldMatrix()
        case .kaeleshDiscovererEnhancement:
            return KaeleshDiscovererEnhancement()
        }
    }
}
