//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ObsidianShieldReinforcementTests: XCTestCase {

    private let sut = ObsidianShieldReinforcement()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_216)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Obsidian Shield Reinforcement")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 250_000, crystal: 250_000, deuterium: 250_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 10_000)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
