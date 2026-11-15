//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AdvancedRecyclingPlantTests: XCTestCase {

    private let sut = AdvancedRecyclingPlant()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_112)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Advanced Recycling Plant")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 95_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 41),
            Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.runeForge), level: 1),
            Requirement(requires: .lifeformBuilding(.megalith), level: 5),
            Requirement(requires: .lifeformBuilding(.crystalRefinery), level: 6),
            Requirement(requires: .lifeformBuilding(.oriktorium), level: 5),
            Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5),
            Requirement(requires: .lifeformBuilding(.magmaForge), level: 3),
            Requirement(requires: .lifeformBuilding(.disruptionChamber), level: 4),
            Requirement(requires: .lifeformBuilding(.mineralResearchCentre), level: 5)
        ])
    }
}
