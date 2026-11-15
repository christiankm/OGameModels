//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class GaussCannonTests: XCTestCase {

    private let sut = GaussCannon()

    func testId() throws {
        XCTAssertEqual(sut.id, 404)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Gauss Cannon")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 20_000, crystal: 15_000, deuterium: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 35_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 6),
            Requirement(requires: .weaponsTechnology, level: 3),
            Requirement(requires: .energyTechnology, level: 6),
            Requirement(requires: .shieldingTechnology, level: 1)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 200)
        XCTAssertEqual(sut.baseWeaponPower, 1_100)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.bomber.id: 5,
            ShipType.deathstar.id: 50
        ])
    }
}
