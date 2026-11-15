//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HighEnergySmeltingTests: XCTestCase {

    private let sut = HighEnergySmelting()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_106)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "High Energy Smelting")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 9_000, crystal: 6_000, deuterium: 3_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 2_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
            Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.researchCentre), level: 5)
        ])
    }
}
