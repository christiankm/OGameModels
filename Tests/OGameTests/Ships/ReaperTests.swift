//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ReaperTests: XCTestCase {

    private let sut = Reaper()

    func testId() throws {
        XCTAssertEqual(sut.id, 218)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Reaper")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 85_000, crystal: 55_000, deuterium: 20_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 140_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .generalClass, level: 1),
            Requirement(requires: .shipyard, level: 10),
            Requirement(requires: .hyperspaceDrive, level: 7),
            Requirement(requires: .hyperspaceTechnology, level: 6),
            Requirement(requires: .shieldingTechnology, level: 6)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .hyperspace, baseSpeed: 7_000, fuelConsumption: 1_100, minimumLevel: 7)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 700)
        XCTAssertEqual(sut.baseWeaponPower, 2_800)
        XCTAssertEqual(sut.baseCargoCapacity, 10_000)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.battleship.id: 7,
            ShipType.bomber.id: 4,
            ShipType.destroyer.id: 3
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.deathstar.id: 10,
            DefenseType.ionCannon.id: 2
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 7)), 21_700)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 7), characterClass: .general), 28_700)
    }
}
