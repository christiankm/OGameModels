//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LargeShieldDomeTests: XCTestCase {

    private let sut = LargeShieldDome()

    func testId() throws {
        XCTAssertEqual(sut.id, 408)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Large Shield Dome")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 50_000, crystal: 50_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 100_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 6),
            Requirement(requires: .shieldingTechnology, level: 6)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 10_000)
        XCTAssertEqual(sut.baseWeaponPower, 1)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [:])
    }
}
