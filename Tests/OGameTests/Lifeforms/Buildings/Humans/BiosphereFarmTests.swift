//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BiosphereFarmTests: XCTestCase {

    private let sut = BiosphereFarm()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_102)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Biosphere Farm")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 5, crystal: 2, energy: 8))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.23)
        XCTAssertEqual(sut.energyIncreaseFactor, 1.021)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
