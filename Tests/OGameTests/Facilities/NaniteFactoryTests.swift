//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class NaniteFactoryTests: XCTestCase {

    private let sut = NaniteFactory()

    func testId() throws {
        XCTAssertEqual(sut.id, 15)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Nanite Factory")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 1_000_000, crystal: 500_000, deuterium: 100_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .roboticsFactory, level: 10),
            Requirement(requires: .computerTechnology, level: 10)
        ])
    }

    func testConstructionTimeHasNoEarlyLevelReduction() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 2, roboticsFactory: 10, naniteFactory: 1, universeSpeed: 7), 28_051)
        XCTAssertEqual(sut.constructionTime(toLevel: 3, roboticsFactory: 10, naniteFactory: 2, universeSpeed: 7), 28_051)
        XCTAssertEqual(sut.constructionTime(toLevel: 6, roboticsFactory: 13, naniteFactory: 5, universeSpeed: 7), 22_040)
        XCTAssertEqual(sut.constructionTime(toLevel: 1, roboticsFactory: 10, naniteFactory: 0, universeSpeed: 5), 39_272)
        XCTAssertEqual(sut.constructionTime(toLevel: 2, roboticsFactory: 10, naniteFactory: 1, universeSpeed: 5), 39_272)
        XCTAssertEqual(sut.constructionTime(toLevel: 3, roboticsFactory: 10, naniteFactory: 2, universeSpeed: 5), 39_272)
    }
}
