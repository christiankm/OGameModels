//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SensorPhalanxTests: XCTestCase {

    private let sut = SensorPhalanx()

    func testId() throws {
        XCTAssertEqual(sut.id, 42)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Sensor Phalanx")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 40_000, deuterium: 20_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lunarBase, level: 1)
        ])
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 20_000, crystal: 40_000, deuterium: 20_000))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 40_000, crystal: 80_000, deuterium: 40_000))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 80_000, crystal: 160_000, deuterium: 80_000))
    }

    func testPricePerScan() throws {
        XCTAssertEqual(sut.pricePerScan, Resources(deuterium: 5_000))
    }

    func testIsAvailable() throws {
        XCTAssertFalse(sut.isAvailable(on: .moon, levels: [:]))
        XCTAssertTrue(sut.isAvailable(on: .moon, levels: [.lunarBase: 1]))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.lunarBase: 1]))
    }

    func testRange() throws {
        XCTAssertEqual(sut.range(level: 0), 0)
        XCTAssertEqual(sut.range(level: 1), 1)
        XCTAssertEqual(sut.range(level: 2), 3)
        XCTAssertEqual(sut.range(level: 3), 8)
        XCTAssertEqual(sut.range(level: 4), 15)
    }

    func testRangeWithDiscovererBonus() throws {
        XCTAssertEqual(sut.range(level: 1, characterClass: .discoverer), 1)
        XCTAssertEqual(sut.range(level: 4, characterClass: .discoverer), 18)
    }
}
