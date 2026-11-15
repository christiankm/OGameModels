//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ComputerTechnologyTests: XCTestCase {

    private let sut = ComputerTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 108)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Computer Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(crystal: 400, deuterium: 600))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 1)
        ])
    }
}
