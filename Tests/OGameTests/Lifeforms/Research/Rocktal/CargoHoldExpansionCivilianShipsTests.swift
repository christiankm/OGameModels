//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CargoHoldExpansionCivilianShipsTests: XCTestCase {

    private let sut = CargoHoldExpansionCivilianShips()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_204)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Cargo Hold Expansion Civilian Ships")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 15_000, deuterium: 7_500))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 3_500)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
