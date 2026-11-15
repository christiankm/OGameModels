//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DefenseTypeTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(DefenseType.rocketLauncher.id, 401)
        XCTAssertEqual(DefenseType.lightLaser.id, 402)
        XCTAssertEqual(DefenseType.heavyLaser.id, 403)
        XCTAssertEqual(DefenseType.gaussCannon.id, 404)
        XCTAssertEqual(DefenseType.ionCannon.id, 405)
        XCTAssertEqual(DefenseType.plasmaTurret.id, 406)
        XCTAssertEqual(DefenseType.smallShieldDome.id, 407)
        XCTAssertEqual(DefenseType.largeShieldDome.id, 408)
        XCTAssertEqual(DefenseType.antiBallisticMissile.id, 502)
        XCTAssertEqual(DefenseType.interplanetaryMissile.id, 503)
    }

    func testAllCases() throws {
        XCTAssertEqual(DefenseType.allCases.count, 10)
    }

    func testDefenseMatchesType() throws {
        for defenseType in DefenseType.allCases {
            XCTAssertEqual(defenseType.defense.id, defenseType.id, "\(defenseType)")
        }
    }

    func testDefenseNames() throws {
        XCTAssertEqual(DefenseType.allCases.map(\.defense.name), [
            "Rocket Launcher", "Light Laser", "Heavy Laser", "Gauss Cannon", "Ion Cannon",
            "Plasma Turret", "Small Shield Dome", "Large Shield Dome", "Anti Ballistic Missile",
            "Interplanetary Missile"
        ])
    }
}
