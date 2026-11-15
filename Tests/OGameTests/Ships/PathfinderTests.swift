//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class PathfinderTests: XCTestCase {

    private let sut = Pathfinder()

    func testId() throws {
        XCTAssertEqual(sut.id, 219)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Pathfinder")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 8_000, crystal: 15_000, deuterium: 8_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 23_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .discovererClass, level: 1),
            Requirement(requires: .shipyard, level: 5),
            Requirement(requires: .hyperspaceDrive, level: 2),
            Requirement(requires: .shieldingTechnology, level: 7)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .hyperspace, baseSpeed: 12_000, fuelConsumption: 300, minimumLevel: 2)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 100)
        XCTAssertEqual(sut.baseWeaponPower, 200)
        XCTAssertEqual(sut.baseCargoCapacity, 10_000)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.cruiser.id: 3,
            ShipType.lightFighter.id: 3,
            ShipType.heavyFighter.id: 2
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.battleship.id: 5,
            ShipType.deathstar.id: 30
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels()), 12_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 4)), 26_400)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 4), characterClass: .general), 38_400)
    }

    func testCargoCapacity() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 0), 10_000)
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10), 15_000)
    }
}
