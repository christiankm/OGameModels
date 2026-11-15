//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RecyclerTests: XCTestCase {

    private let sut = Recycler()

    func testId() throws {
        XCTAssertEqual(sut.id, 209)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Recycler")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 10_000, crystal: 6_000, deuterium: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 16_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 4),
            Requirement(requires: .combustionDrive, level: 6),
            Requirement(requires: .shieldingTechnology, level: 2)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .combustion, baseSpeed: 2_000, fuelConsumption: 300, minimumLevel: 6),
            ShipDrive(drive: .impulse, baseSpeed: 4_000, fuelConsumption: 600, minimumLevel: 17),
            ShipDrive(drive: .hyperspace, baseSpeed: 6_000, fuelConsumption: 900, minimumLevel: 15)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 10)
        XCTAssertEqual(sut.baseWeaponPower, 1)
        XCTAssertEqual(sut.baseCargoCapacity, 20_000)
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

    func testSpeedForEachDrive() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6)), 3_200)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6, impulse: 17)), 17_600)
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6, impulse: 17, hyperspace: 15)), 33_000)
    }

    func testSpeedWithGeneralBonus() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 6), characterClass: .general), 5_200)
    }

    func testFuelConsumptionForEachDrive() throws {
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6)), 300)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6, impulse: 17)), 600)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 6, impulse: 17, hyperspace: 15)), 900)
    }
}
