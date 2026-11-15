//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RocketLauncherTests: XCTestCase {

    private let sut = RocketLauncher()

    func testId() throws {
        XCTAssertEqual(sut.id, 401)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Rocket Launcher")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources(metal: 2_000))
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
        XCTAssertEqual(sut.baseShieldPower, 20)
        XCTAssertEqual(sut.baseWeaponPower, 80)
    }

    func testShieldPower() throws {
        XCTAssertEqual(sut.shieldPower(shieldingTechnology: 0), 20)
        XCTAssertEqual(sut.shieldPower(shieldingTechnology: 10), 40)
    }

    func testWeaponPower() throws {
        XCTAssertEqual(sut.weaponPower(weaponsTechnology: 0), 80)
        XCTAssertEqual(sut.weaponPower(weaponsTechnology: 5), 120)
    }

    func testRapidfire() throws {
        XCTAssertEqual(sut.rapidfire, [:])
    }

    func testRapidfireFrom() throws {
        XCTAssertEqual(sut.rapidfireFrom, [
            ShipType.cruiser.id: 10,
            ShipType.bomber.id: 20,
            ShipType.deathstar.id: 200
        ])
    }
}
