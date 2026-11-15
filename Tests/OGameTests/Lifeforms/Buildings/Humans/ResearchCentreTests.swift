//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ResearchCentreTests: XCTestCase {

    private let sut = ResearchCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_103)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Research Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 25_000, deuterium: 10_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.3)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 21),
            Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22)
        ])
    }
}
