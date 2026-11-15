//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SanctuaryTests: XCTestCase {

    private let sut = Sanctuary()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_101)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Sanctuary")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 4, crystal: 3))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.21)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.22)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
