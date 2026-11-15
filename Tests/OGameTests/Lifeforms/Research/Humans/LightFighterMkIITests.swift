//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LightFighterMkIITests: XCTestCase {

    private let sut = LightFighterMkII()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_209)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Light Fighter MkII")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 320_000, crystal: 240_000, deuterium: 100_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 6_500)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
