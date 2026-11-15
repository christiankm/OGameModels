//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BattleshipTests: XCTestCase {

    private let sut = Battleship()

    func testId() throws {
        XCTAssertEqual(sut.id, 207)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Battleship")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 45_000, crystal: 15_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 60_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 7),
            Requirement(requires: .hyperspaceDrive, level: 4)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .hyperspace, baseSpeed: 10_000, fuelConsumption: 500, minimumLevel: 4)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 200)
        XCTAssertEqual(sut.baseWeaponPower, 1_000)
        XCTAssertEqual(sut.baseCargoCapacity, 1_500)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            ShipType.pathfinder.id: 5
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.battlecruiser.id: 7,
            ShipType.deathstar.id: 30,
            ShipType.reaper.id: 7
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 4)), 22_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(hyperspace: 4), characterClass: .general), 32_000)
    }
}
