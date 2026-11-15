//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MagmaForgeTests: XCTestCase {

    private let sut = MagmaForge()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_106)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Magma Forge")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 10_000, crystal: 8_000, deuterium: 1_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 2_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.meditationEnclave), level: 21),
            Requirement(requires: .lifeformBuilding(.crystalFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.runeTechnologium), level: 5)
        ])
    }
}
