//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HighPerformanceTerraformerTests: XCTestCase {

    private let sut = HighPerformanceTerraformer()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_207)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "High Performance Terraformer")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 70_000, crystal: 40_000, deuterium: 20_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 8_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
