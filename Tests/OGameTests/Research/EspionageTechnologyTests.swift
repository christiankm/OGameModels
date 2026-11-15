//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class EspionageTechnologyTests: XCTestCase {

    private let sut = EspionageTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 106)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Espionage Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 200, crystal: 1_000, deuterium: 200))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 3)
        ])
    }
}
