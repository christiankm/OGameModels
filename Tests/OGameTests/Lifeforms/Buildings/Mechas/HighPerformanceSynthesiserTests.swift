//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HighPerformanceSynthesiserTests: XCTestCase {

    private let sut = HighPerformanceSynthesiser()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_110)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "High Performance Synthesiser")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 100_000, crystal: 40_000, deuterium: 20_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 52_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
            Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 2)
        ])
    }
}
