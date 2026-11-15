//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class GeothermalPowerPlantsTests: XCTestCase {

    private let sut = GeothermalPowerPlants()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_206)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Geothermal Power Plants")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 50_000, crystal: 50_000, deuterium: 20_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 5_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
