//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CrystalStorageTests: XCTestCase {

    private let sut = CrystalStorage()

    func testId() throws {
        XCTAssertEqual(sut.id, 23)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Crystal Storage")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 1_000, crystal: 500))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testIsAvailableOnPlanetAndMoon() throws {
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [:]))
        XCTAssertTrue(sut.isAvailable(on: .moon, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .debrisField, levels: [:]))
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 1_000, crystal: 500))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 2_000, crystal: 1_000))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 4_000, crystal: 2_000))
        XCTAssertEqual(sut.costToLevel(4), Resources(metal: 8_000, crystal: 4_000))
        XCTAssertEqual(sut.costToLevel(5), Resources(metal: 16_000, crystal: 8_000))
        XCTAssertEqual(sut.costToLevel(6), Resources(metal: 32_000, crystal: 16_000))
    }

    func testCapacity() throws {
        XCTAssertEqual(sut.capacity(atLevel: 0), 10_000)
        XCTAssertEqual(sut.capacity(atLevel: 1), 20_000)
        XCTAssertEqual(sut.capacity(atLevel: 2), 40_000)
        XCTAssertEqual(sut.capacity(atLevel: 3), 75_000)
        XCTAssertEqual(sut.capacity(atLevel: 4), 140_000)
        XCTAssertEqual(sut.capacity(atLevel: 5), 255_000)
    }
}
