//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LightFighterTests: XCTestCase {

    private let sut = LightFighter()

    func testId() throws {
        XCTAssertEqual(sut.id, 204)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Light Fighter")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 3_000, crystal: 1_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 4_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 1),
            Requirement(requires: .combustionDrive, level: 1)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .combustion, baseSpeed: 12_500, fuelConsumption: 20, minimumLevel: 1)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 10)
        XCTAssertEqual(sut.baseWeaponPower, 50)
        XCTAssertEqual(sut.baseCargoCapacity, 50)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testShieldPower() throws {
        XCTAssertEqual(sut.shieldPower(shieldingTechnology: 0), 10)
        XCTAssertEqual(sut.shieldPower(shieldingTechnology: 10), 20)
    }

    func testWeaponPower() throws {
        XCTAssertEqual(sut.weaponPower(weaponsTechnology: 0), 50)
        XCTAssertEqual(sut.weaponPower(weaponsTechnology: 3), 65)
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
            ShipType.cruiser.id: 6,
            ShipType.deathstar.id: 200,
            ShipType.pathfinder.id: 3
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6)), 20_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6), characterClass: .general), 32_500)
    }

    func testFuelConsumption() throws {
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6)), 20)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6), characterClass: .general), 10)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6), deuteriumSaveFactor: 0.5), 10)
    }
}
