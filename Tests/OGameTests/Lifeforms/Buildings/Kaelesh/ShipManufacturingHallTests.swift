//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ShipManufacturingHallTests: XCTestCase {

    private let sut = ShipManufacturingHall()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_111)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Ship Manufacturing Hall")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 75_000, crystal: 50_000, deuterium: 55_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 90_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
            Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
            Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1),
            Requirement(requires: .lifeformBuilding(.bioModifier), level: 6),
            Requirement(requires: .lifeformBuilding(.forumOfTranscendence), level: 1)
        ])
    }
}
