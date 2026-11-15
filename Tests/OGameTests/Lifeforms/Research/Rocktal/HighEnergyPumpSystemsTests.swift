//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HighEnergyPumpSystemsTests: XCTestCase {

    private let sut = HighEnergyPumpSystems()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_203)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "High Energy Pump Systems")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 15_000, crystal: 10_000, deuterium: 5_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 2_500)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
