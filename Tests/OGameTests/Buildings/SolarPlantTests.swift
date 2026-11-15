//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SolarPlantTests: XCTestCase {

    private let sut = SolarPlant()

    func testId() throws {
        XCTAssertEqual(sut.id, 4)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Solar Plant")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 75, crystal: 30))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.5)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testProduction() throws {
        XCTAssertEqual(sut.production(level: 29), 9_200)
    }

    func testConstructionTimeIsAtLeastOneSecond() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 1, roboticsFactory: 10, naniteFactory: 7, universeSpeed: 6), 1)
    }
}
