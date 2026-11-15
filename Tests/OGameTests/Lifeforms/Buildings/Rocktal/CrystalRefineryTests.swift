//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CrystalRefineryTests: XCTestCase {

    private let sut = CrystalRefinery()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_109)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Crystal Refinery")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 85_000, crystal: 44_000, deuterium: 25_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
            Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
            Requirement(requires: .lifeformBuilding(.megalith), level: 1)
        ])
    }
}
