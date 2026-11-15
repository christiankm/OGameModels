//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class OptimisedSiloConstructionMethodTests: XCTestCase {

    private let sut = OptimisedSiloConstructionMethod()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_214)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Optimised Silo Construction Method")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 220_000, crystal: 110_000, deuterium: 110_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 9_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
