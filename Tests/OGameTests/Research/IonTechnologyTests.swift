//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class IonTechnologyTests: XCTestCase {

    private let sut = IonTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 121)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Ion Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 1_000, crystal: 300, deuterium: 100))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 4),
            Requirement(requires: .energyTechnology, level: 4),
            Requirement(requires: .laserTechnology, level: 5)
        ])
    }
}
