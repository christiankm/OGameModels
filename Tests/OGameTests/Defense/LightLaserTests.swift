//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LightLaserTests: XCTestCase {

    private let sut = LightLaser()

    func testId() throws {
        XCTAssertEqual(sut.id, 402)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Light Laser")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 1_500, crystal: 500))
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 2_000)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 2),
            Requirement(requires: .laserTechnology, level: 3)
        ])
    }

    func testCombatValues() throws {
        XCTAssertEqual(sut.baseShieldPower, 25)
        XCTAssertEqual(sut.baseWeaponPower, 100)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.bomber.id: 20,
            ShipType.destroyer.id: 10,
            ShipType.deathstar.id: 200
        ])
    }
}
