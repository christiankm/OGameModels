//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SolarSatelliteTests: XCTestCase {

    private let sut = SolarSatellite()

    func testId() throws {
        XCTAssertEqual(sut.id, 212)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Solar Satellite")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(crystal: 2_000, deuterium: 500))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 2_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 1)
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
        XCTAssertNil(sut.drive(for: DriveLevels(combustion: 10, impulse: 10, hyperspace: 10)))
        XCTAssertEqual(sut.speed(driveLevels: DriveLevels(combustion: 10)), 0)
        XCTAssertEqual(sut.fuelConsumption(driveLevels: DriveLevels(combustion: 10)), 0)
    }

    func testEnergyProduction() throws {
        let temperature = Temperature(min: 20, max: 60)
        XCTAssertEqual(sut.energyProduction(temperature: temperature, quantity: 1), 33)
        XCTAssertEqual(sut.energyProduction(temperature: temperature, quantity: 10), 330)
    }

    func testEnergyProductionWithCollectorBonus() throws {
        let temperature = Temperature(min: 20, max: 60)
        XCTAssertEqual(sut.energyProduction(temperature: temperature, quantity: 10, characterClass: .collector), 363)
    }
}
