//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class IntergalacticEnvoysTests: XCTestCase {

    private let sut = IntergalacticEnvoys()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_201)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Intergalactic Envoys")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 5_000, crystal: 2_500, deuterium: 500))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 1_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
