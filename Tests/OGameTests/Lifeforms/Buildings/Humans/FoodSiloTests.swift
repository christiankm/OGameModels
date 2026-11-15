//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class FoodSiloTests: XCTestCase {

    private let sut = FoodSilo()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_107)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Food Silo")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 25_000, crystal: 13_000, deuterium: 7_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.09)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 12_000)
        XCTAssertEqual(sut.durationFactor, 1.17)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
            Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.researchCentre), level: 5),
            Requirement(requires: .lifeformBuilding(.highEnergySmelting), level: 3)
        ])
    }
}
