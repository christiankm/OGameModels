//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SmallCargoTests: XCTestCase {

    private let sut = SmallCargo()

    func testId() throws {
        XCTAssertEqual(sut.id, 202)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Small Cargo")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 2_000, crystal: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 4_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 2),
            Requirement(requires: .combustionDrive, level: 2)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .combustion, baseSpeed: 5_000, fuelConsumption: 10, minimumLevel: 2),
            ShipDrive(drive: .impulse, baseSpeed: 10_000, fuelConsumption: 20, minimumLevel: 5)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 10)
        XCTAssertEqual(sut.baseWeaponPower, 5)
        XCTAssertEqual(sut.baseCargoCapacity, 5_000)
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
            ShipType.heavyFighter.id: 3,
            ShipType.battlecruiser.id: 3,
            ShipType.deathstar.id: 250
        ])
    }

    func testSpeedSwitchesToImpulseDriveAtLevel5() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 4, impulse: 4)), 7_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 4, impulse: 5)), 20_000)
    }

    func testSpeedWithCollectorBonus() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 4), characterClass: .collector), 12_000)
    }

    func testFuelConsumption() throws {
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 4, impulse: 4)), 10)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 4, impulse: 5)), 20)
    }

    func testCargoCapacityWithCollectorBonus() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 0, characterClass: .collector), 6_250)
    }
}
