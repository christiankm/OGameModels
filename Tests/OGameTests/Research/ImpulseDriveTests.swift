//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ImpulseDriveTests: XCTestCase {

    private let sut = ImpulseDrive()

    func testId() throws {
        XCTAssertEqual(sut.id, 117)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Impulse Drive")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 2_000, crystal: 4_000, deuterium: 600))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 2),
            Requirement(requires: .energyTechnology, level: 1)
        ])
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 8_000, crystal: 16_000, deuterium: 2_400))
    }
}
