//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class WeaponsTechnologyTests: XCTestCase {

    private let sut = WeaponsTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 109)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Weapons Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 800, crystal: 200))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 4)
        ])
    }
}
