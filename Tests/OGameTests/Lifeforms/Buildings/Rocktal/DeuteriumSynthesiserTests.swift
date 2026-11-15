//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DeuteriumSynthesiserTests: XCTestCase {

    private let sut = DeuteriumSynthesiser()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_110)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Deuterium Synthesiser")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 120_000, crystal: 50_000, deuterium: 20_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 52_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
            Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
            Requirement(requires: .lifeformBuilding(.megalith), level: 2)
        ])
    }
}
