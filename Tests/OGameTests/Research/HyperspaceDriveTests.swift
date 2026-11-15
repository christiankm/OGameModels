//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HyperspaceDriveTests: XCTestCase {

    private let sut = HyperspaceDrive()

    func testId() throws {
        XCTAssertEqual(sut.id, 118)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Hyperspace Drive")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 10_000, crystal: 20_000, deuterium: 6_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .hyperspaceTechnology, level: 3)
        ])
    }
}
