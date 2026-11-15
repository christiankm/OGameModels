//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ColonyShipTests: XCTestCase {

    private let sut = ColonyShip()

    func testId() throws {
        XCTAssertEqual(sut.id, 208)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Colony Ship")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 10_000, crystal: 20_000, deuterium: 10_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 30_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 4),
            Requirement(requires: .impulseDrive, level: 3)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .impulse, baseSpeed: 2_500, fuelConsumption: 1_000, minimumLevel: 3)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 100)
        XCTAssertEqual(sut.baseWeaponPower, 50)
        XCTAssertEqual(sut.baseCargoCapacity, 7_500)
        XCTAssertFalse(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.deathstar.id: 250
        ])
    }

    func testSpeedHasNoGeneralBonus() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 3)), 4_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 3), characterClass: .general), 4_000)
    }
}
