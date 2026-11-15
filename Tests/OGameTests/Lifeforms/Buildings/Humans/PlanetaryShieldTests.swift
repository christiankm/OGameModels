//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class PlanetaryShieldTests: XCTestCase {

    private let sut = PlanetaryShield()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_112)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Planetary Shield")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 95_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
            Requirement(requires: .lifeformBuilding(.biosphereFarm), level: 22),
            Requirement(requires: .lifeformBuilding(.researchCentre), level: 5),
            Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
            Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 5),
            Requirement(requires: .lifeformBuilding(.skyscraper), level: 6),
            Requirement(requires: .lifeformBuilding(.highEnergySmelting), level: 3),
            Requirement(requires: .lifeformBuilding(.metropolis), level: 5),
            Requirement(requires: .lifeformBuilding(.foodSilo), level: 4),
            Requirement(requires: .lifeformBuilding(.neuroCalibrationCentre), level: 5)
        ])
    }
}
