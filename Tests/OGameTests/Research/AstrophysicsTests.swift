//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AstrophysicsTests: XCTestCase {

    private let sut = Astrophysics()

    func testId() throws {
        XCTAssertEqual(sut.id, 124)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Astrophysics")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 4_000, crystal: 8_000, deuterium: 4_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.75)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .espionageTechnology, level: 4),
            Requirement(requires: .impulseDrive, level: 3)
        ])
    }

    func testCostToLevelRoundsToNearestHundred() throws {
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 4_000, crystal: 8_000, deuterium: 4_000))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 7_000, crystal: 14_000, deuterium: 7_000))
        XCTAssertEqual(sut.costToLevel(9), Resources(metal: 351_900, crystal: 703_700, deuterium: 351_900))
    }
}
