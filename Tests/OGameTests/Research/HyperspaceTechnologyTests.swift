//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HyperspaceTechnologyTests: XCTestCase {

    private let sut = HyperspaceTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 114)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Hyperspace Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(crystal: 4_000, deuterium: 2_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 7),
            Requirement(requires: .shieldingTechnology, level: 5),
            Requirement(requires: .energyTechnology, level: 5)
        ])
    }
}
