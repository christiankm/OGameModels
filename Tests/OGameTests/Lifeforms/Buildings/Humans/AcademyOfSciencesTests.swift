//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AcademyOfSciencesTests: XCTestCase {

    private let sut = AcademyOfSciences()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_104)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Academy of Sciences")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 5_000, crystal: 3_200, deuterium: 1_500, population: 20_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.70)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.10)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.6)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41)
        ])
    }
}
