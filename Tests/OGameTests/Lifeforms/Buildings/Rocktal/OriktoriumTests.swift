//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class OriktoriumTests: XCTestCase {

    private let sut = Oriktorium()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_105)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Oriktorium")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 90_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.65)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.1)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 64_000)
        XCTAssertEqual(sut.durationFactor, 1.7)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
            Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
            Requirement(requires: .lifeformBuilding(.megalith), level: 1),
            Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 5)
        ])
    }
}
