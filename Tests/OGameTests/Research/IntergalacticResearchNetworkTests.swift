//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class IntergalacticResearchNetworkTests: XCTestCase {

    private let sut = IntergalacticResearchNetwork()

    func testId() throws {
        XCTAssertEqual(sut.id, 123)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Intergalactic Research Network")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 240_000, crystal: 400_000, deuterium: 160_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 10),
            Requirement(requires: .computerTechnology, level: 8),
            Requirement(requires: .hyperspaceTechnology, level: 8)
        ])
    }
}
