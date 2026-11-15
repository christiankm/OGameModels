//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HardenedDiamondDrillHeadsTests: XCTestCase {

    private let sut = HardenedDiamondDrillHeads()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_210)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Hardened Diamond Drill Heads")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 85_000, crystal: 40_000, deuterium: 35_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 7_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
