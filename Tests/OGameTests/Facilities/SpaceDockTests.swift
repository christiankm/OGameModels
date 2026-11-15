//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SpaceDockTests: XCTestCase {

    private let sut = SpaceDock()

    func testId() throws {
        XCTAssertEqual(sut.id, 36)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Space Dock")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 200, deuterium: 50, energy: 50))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 5.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 2)
        ])
    }

    func testCostToLevelScalesEnergyBy2Point5() throws {
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 200, deuterium: 50, energy: 50))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 1_000, deuterium: 250, energy: 125))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 5_000, deuterium: 1_250, energy: 312))
        XCTAssertEqual(sut.costToLevel(4), Resources(metal: 25_000, deuterium: 6_250, energy: 781))
        XCTAssertEqual(sut.costToLevel(5), Resources(metal: 125_000, deuterium: 31_250, energy: 1_953))
        XCTAssertEqual(sut.costToLevel(8), Resources(metal: 15_625_000, deuterium: 3_906_250, energy: 30_517))
    }
}
