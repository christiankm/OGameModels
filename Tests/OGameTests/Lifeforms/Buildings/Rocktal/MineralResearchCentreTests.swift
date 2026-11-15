//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MineralResearchCentreTests: XCTestCase {

    private let sut = MineralResearchCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_111)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Mineral Research Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 250_000, crystal: 150_000, deuterium: 100_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.80)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 90_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
            Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
            Requirement(requires: .lifeformBuilding(.megalith), level: 1),
            Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 6),
            Requirement(requires: .lifeformBuilding(.oriktorium), level: 1)
        ])
    }
}
