//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HeavyLaserTests: XCTestCase {

    private let sut = HeavyLaser()

    func testId() throws {
        XCTAssertEqual(sut.id, 403)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Heavy Laser")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 6_000, crystal: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 8_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 4),
            Requirement(requires: .energyTechnology, level: 3),
            Requirement(requires: .laserTechnology, level: 6)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 100)
        XCTAssertEqual(sut.baseWeaponPower, 250)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.bomber.id: 10,
            ShipType.deathstar.id: 100
        ])
    }
}
