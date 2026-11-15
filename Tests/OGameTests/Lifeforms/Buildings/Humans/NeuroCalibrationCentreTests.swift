//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class NeuroCalibrationCentreTests: XCTestCase {

    private let sut = NeuroCalibrationCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_105)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Neuro Calibration Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 100_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.70)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.10)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 64_000)
        XCTAssertEqual(sut.durationFactor, 1.7)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
            Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
            Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 1),
            Requirement(requires: .lifeformBuilding(.skyscraper), level: 5)
        ])
    }
}
