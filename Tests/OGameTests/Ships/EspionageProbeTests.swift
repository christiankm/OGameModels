//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class EspionageProbeTests: XCTestCase {

    private let sut = EspionageProbe()

    func testId() throws {
        XCTAssertEqual(sut.id, 210)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Espionage Probe")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(crystal: 1_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 1_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 3),
            Requirement(requires: .combustionDrive, level: 3),
            Requirement(requires: .espionageTechnology, level: 2)
        ])
    }

    func testDrives() throws {
        XCTAssertEqual(sut.drives, [
            ShipDrive(drive: .combustion, baseSpeed: 100_000_000, fuelConsumption: 1, minimumLevel: 3)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 0)
        XCTAssertEqual(sut.baseWeaponPower, 0)
        XCTAssertEqual(sut.baseCargoCapacity, 5)
        XCTAssertFalse(sut.isCombatShip)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.lightFighter.id: 5,
            ShipType.heavyFighter.id: 5,
            ShipType.cruiser.id: 5,
            ShipType.battleship.id: 5,
            ShipType.battlecruiser.id: 5,
            ShipType.bomber.id: 5,
            ShipType.destroyer.id: 5,
            ShipType.deathstar.id: 1_250,
            ShipType.reaper.id: 5,
            ShipType.pathfinder.id: 5,
            ShipType.smallCargo.id: 5,
            ShipType.largeCargo.id: 5,
            ShipType.colonyShip.id: 5,
            ShipType.recycler.id: 5
        ])
    }

    func testSpeed() throws {
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 3)), 130_000_000)
    }

    func testCargoCapacityIsZeroWithoutProbeRaids() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10), 0)
    }

    func testCargoCapacityWithProbeRaids() throws {
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 0, probeRaids: true), 5)
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 10, probeRaids: true), 7)
    }
}
