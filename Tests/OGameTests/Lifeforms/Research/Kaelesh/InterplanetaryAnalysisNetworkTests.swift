//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class InterplanetaryAnalysisNetworkTests: XCTestCase {

    private let sut = InterplanetaryAnalysisNetwork()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_208)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Interplanetary Analysis Network")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 80_000, crystal: 50_000, deuterium: 20_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 6_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
