//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class PlasmaTechnologyTests: XCTestCase {

    private let sut = PlasmaTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 122)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Plasma Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 2_000, crystal: 4_000, deuterium: 1_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .ionTechnology, level: 5),
            Requirement(requires: .energyTechnology, level: 8),
            Requirement(requires: .laserTechnology, level: 10)
        ])
    }
}
