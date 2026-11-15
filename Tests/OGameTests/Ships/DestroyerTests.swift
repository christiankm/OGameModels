//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DestroyerTests: XCTestCase {

    private let sut = Destroyer()

    func testId() throws {
        XCTAssertEqual(sut.id, 213)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Destroyer")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 60_000, crystal: 50_000, deuterium: 15_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 110_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 9),
            Requirement(requires: .hyperspaceDrive, level: 6),
            Requirement(requires: .hyperspaceTechnology, level: 5)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .hyperspace, baseSpeed: 5_000, fuelConsumption: 1_000, minimumLevel: 6)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 500)
        XCTAssertEqual(sut.baseWeaponPower, 2_000)
        XCTAssertEqual(sut.baseCargoCapacity, 2_000)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.battlecruiser.id: 2,
            LightLaser().id: 10
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.deathstar.id: 5,
            ShipType.reaper.id: 3
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 6)), 14_000)
    }
}
