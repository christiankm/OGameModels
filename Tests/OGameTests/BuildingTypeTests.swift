//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BuildingTypeTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(BuildingType.metalMine.id, 1)
        XCTAssertEqual(BuildingType.crystalMine.id, 2)
        XCTAssertEqual(BuildingType.deuteriumSynthesizer.id, 3)
        XCTAssertEqual(BuildingType.solarPlant.id, 4)
        XCTAssertEqual(BuildingType.fusionReactor.id, 12)
        XCTAssertEqual(BuildingType.metalStorage.id, 22)
        XCTAssertEqual(BuildingType.crystalStorage.id, 23)
        XCTAssertEqual(BuildingType.deuteriumTank.id, 24)
        XCTAssertEqual(BuildingType.roboticsFactory.id, 14)
        XCTAssertEqual(BuildingType.shipyard.id, 21)
        XCTAssertEqual(BuildingType.researchLab.id, 31)
        XCTAssertEqual(BuildingType.allianceDepot.id, 34)
        XCTAssertEqual(BuildingType.missileSilo.id, 44)
        XCTAssertEqual(BuildingType.naniteFactory.id, 15)
        XCTAssertEqual(BuildingType.terraformer.id, 33)
        XCTAssertEqual(BuildingType.spaceDock.id, 36)
        XCTAssertEqual(BuildingType.lunarBase.id, 41)
        XCTAssertEqual(BuildingType.sensorPhalanx.id, 42)
        XCTAssertEqual(BuildingType.jumpGate.id, 43)
    }

    func testAllCases() throws {
        XCTAssertEqual(BuildingType.allCases.count, 19)
    }

    func testBuildingMatchesType() throws {
        for buildingType in BuildingType.allCases {
            XCTAssertEqual(buildingType.building.id, buildingType.id, "\(buildingType)")
        }
    }

    func testBuildingNames() throws {
        XCTAssertEqual(BuildingType.allCases.map(\.building.name), [
            "Metal Mine", "Crystal Mine", "Deuterium Synthesizer", "Solar Plant", "Fusion Reactor",
            "Metal Storage", "Crystal Storage", "Deuterium Tank", "Robotics Factory", "Shipyard",
            "Research Lab", "Alliance Depot", "Missile Silo", "Nanite Factory", "Terraformer",
            "Space Dock", "Lunar Base", "Sensor Phalanx", "Jump Gate"
        ])
    }
}
