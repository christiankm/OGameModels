//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class IonCannonTests: XCTestCase {

    private let sut = IonCannon()

    func testId() throws {
        XCTAssertEqual(sut.id, 405)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Ion Cannon")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 5_000, crystal: 3_000))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 8_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 4),
            Requirement(requires: .ionTechnology, level: 4)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 500)
        XCTAssertEqual(sut.baseWeaponPower, 150)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [
            ShipType.reaper.id: 2
        ])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.bomber.id: 10,
            ShipType.deathstar.id: 100
        ])
    }
}
