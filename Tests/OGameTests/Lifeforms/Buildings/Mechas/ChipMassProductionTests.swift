//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ChipMassProductionTests: XCTestCase {

    private let sut = ChipMassProduction()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_111)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Chip Mass Production")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 55_000, crystal: 50_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 50_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
            Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1),
            Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 6),
            Requirement(requires: .lifeformBuilding(.quantumComputerCentre), level: 1)
        ])
    }
}
