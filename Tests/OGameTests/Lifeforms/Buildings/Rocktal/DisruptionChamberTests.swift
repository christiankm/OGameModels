//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DisruptionChamberTests: XCTestCase {

    private let sut = DisruptionChamber()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_107)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Disruption Chamber")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 15_000, deuterium: 10_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
            Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5),
            Requirement(requires: .lifeformBuilding(.magmaForge), level: 3)
        ])
    }
}
