//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class JumpGateTests: XCTestCase {

    private let sut = JumpGate()

    func testId() throws {
        XCTAssertEqual(sut.id, 43)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Jump Gate")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 2_000_000, crystal: 4_000_000, deuterium: 2_000_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lunarBase, level: 1),
            Requirement(requires: .hyperspaceTechnology, level: 7)
        ])
    }

    func testIsAvailableOnlyOnMoon() throws {
        XCTAssertTrue(sut.isAvailable(on: .moon, levels: [.lunarBase: 1, .hyperspaceTechnology: 7]))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.lunarBase: 1, .hyperspaceTechnology: 7]))
    }
}
