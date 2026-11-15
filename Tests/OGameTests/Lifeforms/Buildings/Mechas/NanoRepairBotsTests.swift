//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class NanoRepairBotsTests: XCTestCase {

    private let sut = NanoRepairBots()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_112)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Nano Repair Bots")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 250_000, crystal: 125_000, deuterium: 125_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 95_000)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.fusionCellFactory), level: 20),
            Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 5),
            Requirement(requires: .lifeformBuilding(.roboticsResearchCentre), level: 5),
            Requirement(requires: .lifeformBuilding(.highPerformanceTransformer), level: 4),
            Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 6),
            Requirement(requires: .lifeformBuilding(.quantumComputerCentre), level: 5),
            Requirement(requires: .lifeformBuilding(.chipMassProduction), level: 11)
        ])
    }
}
