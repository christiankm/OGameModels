//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MissileSiloTests: XCTestCase {

    private let sut = MissileSilo()

    func testId() throws {
        XCTAssertEqual(sut.id, 44)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Missile Silo")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 20_000, deuterium: 1_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .shipyard, level: 1)
        ])
    }
}
