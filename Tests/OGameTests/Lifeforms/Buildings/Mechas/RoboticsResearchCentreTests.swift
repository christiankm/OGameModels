//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RoboticsResearchCentreTests: XCTestCase {

    private let sut = RoboticsResearchCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_103)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Robotics Research Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 30_000, crystal: 20_000, deuterium: 10_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 17),
            Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20)
        ])
    }
}
