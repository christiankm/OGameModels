//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RuneForgeTests: XCTestCase {

    private let sut = RuneForge()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_104)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Rune Forge")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 5_000, crystal: 3_800, deuterium: 1_000, population: 16_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.70)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.14)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.6)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41)
        ])
    }
}
