//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MechanGeneralEnhancementTests: XCTestCase {

    private let sut = MechanGeneralEnhancement()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_218)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Mechan General Enhancement")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 300_000, crystal: 180_000, deuterium: 120_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.70)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 11_000)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
