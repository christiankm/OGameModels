//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class PlasmaTurretTests: XCTestCase {

    private let sut = PlasmaTurret()

    func testId() throws {
        XCTAssertEqual(sut.id, 406)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Plasma Turret")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 50_000, crystal: 50_000, deuterium: 30_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 100_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 8),
            Requirement(requires: .plasmaTechnology, level: 7)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 300)
        XCTAssertEqual(sut.baseWeaponPower, 3_000)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.bomber.id: 5
        ])
    }
}
