//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BattlecruiserTests: XCTestCase {

    private let sut = Battlecruiser()

    func testId() throws {
        XCTAssertEqual(sut.id, 215)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Battlecruiser")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 30_000, crystal: 40_000, deuterium: 15_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 70_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 8),
            Requirement(requires: .hyperspaceDrive, level: 5),
            Requirement(requires: .hyperspaceTechnology, level: 5),
            Requirement(requires: .laserTechnology, level: 12)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .hyperspace, baseSpeed: 10_000, fuelConsumption: 250, minimumLevel: 5)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 400)
        XCTAssertEqual(sut.baseWeaponPower, 700)
        XCTAssertEqual(sut.baseCargoCapacity, 750)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.heavyFighter.id: 4,
            ShipType.cruiser.id: 4,
            ShipType.battleship.id: 7,
            ShipType.smallCargo.id: 3,
            ShipType.largeCargo.id: 3
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.destroyer.id: 2,
            ShipType.deathstar.id: 15
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 5)), 25_000)
    }
}
