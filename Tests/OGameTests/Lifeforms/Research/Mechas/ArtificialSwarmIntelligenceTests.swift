//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ArtificialSwarmIntelligenceTests: XCTestCase {

    private let sut = ArtificialSwarmIntelligence()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_213)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Artificial Swarm Intelligence")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 200_000, crystal: 100_000, deuterium: 100_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 8_500)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
