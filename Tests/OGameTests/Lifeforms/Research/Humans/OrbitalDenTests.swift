//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class OrbitalDenTests: XCTestCase {

    private let sut = OrbitalDen()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_205)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Orbital Den")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 25_000, crystal: 20_000, deuterium: 10_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 4_500)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
