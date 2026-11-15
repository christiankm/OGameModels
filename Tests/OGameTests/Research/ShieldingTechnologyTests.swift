//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ShieldingTechnologyTests: XCTestCase {

    private let sut = ShieldingTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 110)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Shielding Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 200, crystal: 600))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 6),
            Requirement(requires: .energyTechnology, level: 3)
        ])
    }
}
