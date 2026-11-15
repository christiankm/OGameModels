//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HeavyFighterTests: XCTestCase {

    private let sut = HeavyFighter()

    func testId() throws {
        XCTAssertEqual(sut.id, 205)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Heavy Fighter")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 6_000, crystal: 4_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 10_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 3),
            Requirement(requires: .impulseDrive, level: 2),
            Requirement(requires: .armourTechnology, level: 2)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .impulse, baseSpeed: 10_000, fuelConsumption: 75, minimumLevel: 2)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 25)
        XCTAssertEqual(sut.baseWeaponPower, 150)
        XCTAssertEqual(sut.baseCargoCapacity, 100)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.smallCargo.id: 3
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.battlecruiser.id: 4,
            ShipType.deathstar.id: 100,
            ShipType.pathfinder.id: 2
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 5)), 20_000)
    }
}
