//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LunarBaseTests: XCTestCase {

    private let sut = LunarBase()

    func testId() throws {
        XCTAssertEqual(sut.id, 41)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Lunar Base")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 40_000, deuterium: 20_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testIsAvailableOnlyOnMoon() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .debrisField, levels: [:]))
        XCTAssertTrue(sut.isAvailable(on: .moon, levels: [:]))
    }

    func testCannotBeDemolished() throws {
        XCTAssertFalse((sut as Any) is any Demolishable)
    }
}
