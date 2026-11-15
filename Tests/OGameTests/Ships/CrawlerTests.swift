//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CrawlerTests: XCTestCase {

    private let sut = Crawler()

    func testId() throws {
        XCTAssertEqual(sut.id, 217)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Crawler")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 2_000, crystal: 2_000, deuterium: 1_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 4_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .collectorClass, level: 1),
            Requirement(requires: .shipyard, level: 5),
            Requirement(requires: .combustionDrive, level: 4),
            Requirement(requires: .armourTechnology, level: 4),
            Requirement(requires: .laserTechnology, level: 4)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 1)
        XCTAssertEqual(sut.baseWeaponPower, 1)
        XCTAssertEqual(sut.baseCargoCapacity, 0)
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

    func testCannotFly() throws {
        XCTAssertEqual(sut.drives, [])
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 10)), 0)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 10)), 0)
    }
}
