//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RuneTechnologiumTests: XCTestCase {

    private let sut = RuneTechnologium()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_103)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Rune Technologium")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 40_000, crystal: 10_000, deuterium: 15_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
            Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22)
        ])
    }
}
