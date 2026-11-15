//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class FleetTests: XCTestCase {

    func testEmptyFleet() throws {
        let sut = Fleet()
        XCTAssertTrue(sut.isEmpty)
        XCTAssertEqual(sut.count, 0)
        XCTAssertEqual(sut[.lightFighter], 0)
    }

    func testSubscript() throws {
        var sut = Fleet([.lightFighter: 10])
        sut[.lightFighter] += 5
        sut[.cruiser] = 2
        XCTAssertEqual(sut[.lightFighter], 15)
        XCTAssertEqual(sut[.cruiser], 2)
        XCTAssertEqual(sut.count, 17)
    }

    func testRemovingAllShipsOfATypeLeavesItEmpty() throws {
        var sut = Fleet([.smallCargo: 3])
        sut[.smallCargo] -= 3
        XCTAssertTrue(sut.isEmpty)
        XCTAssertEqual(sut, Fleet())
    }

    func testCanFly() throws {
        XCTAssertFalse(Fleet([.solarSatellite: 10, .crawler: 5]).canFly)
        XCTAssertTrue(Fleet([.solarSatellite: 10, .espionageProbe: 1]).canFly)
    }

    func testSpeedIsTheSlowestShip() throws {
        let sut = Fleet([.lightFighter: 10, .largeCargo: 2, .solarSatellite: 5])
        let driveLevels = DriveLevels(combustion: 6)
        XCTAssertEqual(sut.speed(driveLevels: driveLevels), LargeCargo().speed(driveLevels: driveLevels))
    }

    func testSpeedOfFleetThatCannotFly() throws {
        XCTAssertNil(Fleet([.solarSatellite: 1]).speed(driveLevels: DriveLevels()))
    }

    func testCargoCapacity() throws {
        let sut = Fleet([.smallCargo: 2, .largeCargo: 1])
        XCTAssertEqual(sut.cargoCapacity(hyperspaceTechnology: 0), 2 * 5_000 + 25_000)
    }

    func testCost() throws {
        let sut = Fleet([.smallCargo: 2, .lightFighter: 1])
        XCTAssertEqual(sut.cost, Resources(metal: 7_000, crystal: 5_000))
    }

    func testAdding() throws {
        let sut = Fleet([.smallCargo: 2]) + Fleet([.smallCargo: 1, .recycler: 4])
        XCTAssertEqual(sut, Fleet([.smallCargo: 3, .recycler: 4]))
    }

    func testQuantifiablesLeaveOutShipsThatCannotFly() throws {
        let sut = Fleet([.smallCargo: 3, .solarSatellite: 10, .crawler: 2])
        XCTAssertEqual(sut.quantifiables, [Quantifiable(id: ShipType.smallCargo.id, quantity: 3)])
    }

    func testInitWithQuantifiables() throws {
        let quantifiables = [
            Quantifiable(id: ShipType.smallCargo.id, quantity: 3),
            Quantifiable(id: ShipType.recycler.id, quantity: 1),
            Quantifiable(id: 1, quantity: 99)
        ]
        XCTAssertEqual(Fleet(quantifiables: quantifiables), Fleet([.smallCargo: 3, .recycler: 1]))
    }
}
