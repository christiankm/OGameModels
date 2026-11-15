//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SeismicMiningTechnologyTests: XCTestCase {

    private let sut = SeismicMiningTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_211)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Seismic Mining Technology")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 120_000, crystal: 30_000, deuterium: 25_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 7_500)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
