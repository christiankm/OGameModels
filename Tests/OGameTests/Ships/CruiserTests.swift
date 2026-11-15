//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CruiserTests: XCTestCase {

    private let sut = Cruiser()

    func testId() throws {
        XCTAssertEqual(sut.id, 206)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Cruiser")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 20_000, crystal: 7_000, deuterium: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 27_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 5),
            Requirement(requires: .impulseDrive, level: 4),
            Requirement(requires: .ionTechnology, level: 2)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .impulse, baseSpeed: 15_000, fuelConsumption: 300, minimumLevel: 4)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 50)
        XCTAssertEqual(sut.baseWeaponPower, 400)
        XCTAssertEqual(sut.baseCargoCapacity, 800)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.lightFighter.id: 6,
            RocketLauncher().id: 10
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.battlecruiser.id: 4,
            ShipType.deathstar.id: 33,
            ShipType.pathfinder.id: 3
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 4)), 27_000)
    }

    func testCargoCapacity() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 0), 800)
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 8), 1_120)
    }

    func testFuelConsumption() throws {
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels()), 300)
    }
}
