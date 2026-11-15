//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LaserTechnologyTests: XCTestCase {

    private let sut = LaserTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 120)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Laser Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 200, crystal: 100))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .energyTechnology, level: 2)
        ])
    }
}
