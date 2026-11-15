//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ResourcesTests: XCTestCase {

    func testInitDefaultValues() throws {
        let sut = Resources()
        XCTAssertEqual(sut.metal, 0)
        XCTAssertEqual(sut.crystal, 0)
        XCTAssertEqual(sut.deuterium, 0)
        XCTAssertEqual(sut.energy, 0)
        XCTAssertEqual(sut.population, 0)
        XCTAssertEqual(sut.food, 0)
    }

    func testInit() throws {
        let sut = Resources(metal: 100_000, crystal: 45_000, deuterium: 10_000, energy: 1_000, population: 130_000, food: 3_000)
        XCTAssertEqual(sut.metal, 100_000)
        XCTAssertEqual(sut.crystal, 45_000)
        XCTAssertEqual(sut.deuterium, 10_000)
        XCTAssertEqual(sut.energy, 1_000)
        XCTAssertEqual(sut.population, 130_000)
        XCTAssertEqual(sut.food, 3_000)
    }

    func testEquatable() throws {
        let sutA = Resources(metal: 100_000, crystal: 45_000, deuterium: 10_000)
        let sutB = Resources(metal: 100_000, crystal: 45_000, deuterium: 10_000)
        
        XCTAssertEqual(sutA, sutB)
        XCTAssertNotEqual(sutA, Resources())
    }

    func testSubtractingStopsAtZero() throws {
        let first = Resources(metal: 2, crystal: 3, deuterium: 4)
        XCTAssertEqual(first.subtracting(Resources(metal: 1, crystal: 1, deuterium: 1)), Resources(metal: 1, crystal: 2, deuterium: 3))
        XCTAssertEqual(
            Resources(metal: 100, crystal: 10).subtracting(Resources(metal: 25, crystal: 40, deuterium: 30)),
            Resources(metal: 75)
        )
    }

    func testAdding() throws {
        let first = Resources(metal: 1, crystal: 2, deuterium: 4)
        let second = Resources(metal: 8, crystal: 16, deuterium: 32)
        XCTAssertEqual(first + second, Resources(metal: 9, crystal: 18, deuterium: 36))
    }

    func testMultiplying() throws {
        XCTAssertEqual(Resources(metal: 1, crystal: 2, deuterium: 4) * 2, Resources(metal: 2, crystal: 4, deuterium: 8))
    }

    func testDescription() throws {
        XCTAssertEqual(Resources(metal: 1, crystal: 2, deuterium: 3).description, "[M: 1, C: 2, D: 3]")
        XCTAssertEqual(
            Resources(metal: 1_000_000, crystal: 2_000_000, deuterium: 3_000_000).description,
            "[M: 1000000, C: 2000000, D: 3000000]"
        )
    }
}
