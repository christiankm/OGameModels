//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SmallShieldDomeTests: XCTestCase {

    private let sut = SmallShieldDome()

    func testId() throws {
        XCTAssertEqual(sut.id, 407)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Small Shield Dome")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 10_000, crystal: 10_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 20_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 1),
            Requirement(requires: .shieldingTechnology, level: 2)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 2_000)
        XCTAssertEqual(sut.baseWeaponPower, 1)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [:])
    }
}
