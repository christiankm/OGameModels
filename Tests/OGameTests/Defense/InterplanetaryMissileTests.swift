//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class InterplanetaryMissileTests: XCTestCase {

    private let sut = InterplanetaryMissile()

    func testId() throws {
        XCTAssertEqual(sut.id, 503)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Interplanetary Missile")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 12_500, crystal: 2_500, deuterium: 10_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 15_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .missileSilo, level: 4),
            Requirement(requires: .impulseDrive, level: 1)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 1)
        XCTAssertEqual(sut.baseWeaponPower, 12_000)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [:])
    }
}
