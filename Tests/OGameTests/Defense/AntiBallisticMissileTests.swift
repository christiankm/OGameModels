//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AntiBallisticMissileTests: XCTestCase {

    private let sut = AntiBallisticMissile()

    func testId() throws {
        XCTAssertEqual(sut.id, 502)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Anti Ballistic Missile")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 8_000, deuterium: 2_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 8_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .missileSilo, level: 2)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 1)
        XCTAssertEqual(sut.baseWeaponPower, 1)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [:])
    }
}
