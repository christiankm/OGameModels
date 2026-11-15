//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BiotechLabTests: XCTestCase {

    private let sut = BiotechLab()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_110)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Biotech Lab")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 150_000, crystal: 30_000, deuterium: 15_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.12)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 52_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.residentialSector), level: 41),
            Requirement(requires: .lifeformBuilding(.academyOfSciences), level: 1),
            Requirement(requires: .lifeformBuilding(.fusionPoweredProduction), level: 2)
        ])
    }
}
