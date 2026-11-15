//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MetropolisTests: XCTestCase {

    private let sut = Metropolis()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_111)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Metropolis")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 80_000, crystal: 35_000, deuterium: 60_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.5)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 90_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
            Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
            Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1),
            Requirement(requires: .lifeformBuilding(.skyscraper), level: 6),
            Requirement(requires: .lifeformBuilding(.neuroCalibrationCentre), level: 1)
        ])
    }
}
