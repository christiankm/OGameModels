//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SkyscraperTests: XCTestCase {

    private let sut = Skyscraper()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_109)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Skyscraper")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 75_000, crystal: 20_000, deuterium: 25_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.09)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
            Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
            Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1)
        ])
    }
}
