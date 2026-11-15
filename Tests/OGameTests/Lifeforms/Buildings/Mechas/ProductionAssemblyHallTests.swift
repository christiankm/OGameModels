//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ProductionAssemblyHallTests: XCTestCase {

    private let sut = ProductionAssemblyHall()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_109)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Production Assembly Hall")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 100_000, crystal: 10_000, deuterium: 3_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.14)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
            Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1)
        ])
    }
}
