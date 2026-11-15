//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LargeCargoTests: XCTestCase {

    private let sut = LargeCargo()

    func testId() throws {
        XCTAssertEqual(sut.id, 203)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Large Cargo")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 6_000, crystal: 6_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 12_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 4),
            Requirement(requires: .combustionDrive, level: 6)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .combustion, baseSpeed: 7_500, fuelConsumption: 50, minimumLevel: 6)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 25)
        XCTAssertEqual(sut.baseWeaponPower, 5)
        XCTAssertEqual(sut.baseCargoCapacity, 25_000)
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
            ShipType.battlecruiser.id: 3,
            ShipType.deathstar.id: 250
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6)), 12_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6), characterClass: .collector), 19_500)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 17)), 20_250)
    }

    func testCargoCapacity() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 8), 35_000)
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10), 37_500)
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10, characterClass: .collector), 43_750)
    }

    func testCargoCapacityInPioneersUniverse() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10, isPioneers: true), 30_000)
    }
}
