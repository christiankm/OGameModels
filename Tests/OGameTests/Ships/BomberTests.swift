//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BomberTests: XCTestCase {

    private let sut = Bomber()

    func testId() throws {
        XCTAssertEqual(sut.id, 211)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Bomber")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 50_000, crystal: 25_000, deuterium: 15_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 75_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 8),
            Requirement(requires: .impulseDrive, level: 6),
            Requirement(requires: .plasmaTechnology, level: 5)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .impulse, baseSpeed: 4_000, fuelConsumption: 700, minimumLevel: 6),
            ShipDrive(drive: .hyperspace, baseSpeed: 5_000, fuelConsumption: 700, minimumLevel: 8)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 500)
        XCTAssertEqual(sut.baseWeaponPower, 1_000)
        XCTAssertEqual(sut.baseCargoCapacity, 500)
        XCTAssertTrue(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.espionageProbe.id: 5,
            ShipType.solarSatellite.id: 5,
            ShipType.crawler.id: 5,
            RocketLauncher().id: 20,
            LightLaser().id: 20,
            HeavyLaser().id: 10,
            IonCannon().id: 10,
            GaussCannon().id: 5,
            PlasmaTurret().id: 5
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.deathstar.id: 25,
            ShipType.reaper.id: 4
        ])
    }

    func testDriveSwitchesToHyperspaceAtLevel8() throws {
        XCTAssertEqual(sut.drive(for: DriveLevels(impulse: 6, hyperspace: 7))?.drive, .impulse)
        XCTAssertEqual(sut.drive(for: DriveLevels(impulse: 6, hyperspace: 8))?.drive, .hyperspace)
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 6, hyperspace: 7)), 8_800)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 6, hyperspace: 0)), 8_800)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 6, hyperspace: 8)), 17_000)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(impulse: 6, hyperspace: 8), characterClass: .general), 22_000)
    }
}
