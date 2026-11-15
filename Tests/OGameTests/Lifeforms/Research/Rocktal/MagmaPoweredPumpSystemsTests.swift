//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MagmaPoweredPumpSystemsTests: XCTestCase {

    private let sut = MagmaPoweredPumpSystems()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_212)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Magma Powered Pump Systems")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 100_000, crystal: 40_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 8_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
