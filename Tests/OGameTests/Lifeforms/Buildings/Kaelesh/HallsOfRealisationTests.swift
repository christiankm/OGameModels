//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HallsOfRealisationTests: XCTestCase {

    private let sut = HallsOfRealisation()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_104)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Halls of Realisation")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 7_500, crystal: 5_000, deuterium: 800, population: 30_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.80)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.10)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.7)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42)
        ])
    }
}
