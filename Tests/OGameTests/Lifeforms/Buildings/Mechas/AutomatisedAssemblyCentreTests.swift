//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AutomatisedAssemblyCentreTests: XCTestCase {

    private let sut = AutomatisedAssemblyCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_106)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Automatised Assembly Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 7_500, crystal: 7_000, deuterium: 1_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 2_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 17),
            Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20),
            Requirement(requires: .lifeformBuilding(.roboticsResearchCentre), level: 5)
        ])
    }
}
