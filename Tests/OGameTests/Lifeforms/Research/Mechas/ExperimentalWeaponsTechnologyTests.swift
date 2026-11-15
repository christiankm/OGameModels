//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ExperimentalWeaponsTechnologyTests: XCTestCase {

    private let sut = ExperimentalWeaponsTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_217)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Experimental Weapons Technology")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 500_000, crystal: 300_000, deuterium: 200_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 13_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
