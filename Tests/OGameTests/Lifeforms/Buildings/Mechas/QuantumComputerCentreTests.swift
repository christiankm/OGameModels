//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class QuantumComputerCentreTests: XCTestCase {

    private let sut = QuantumComputerCentre()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_105)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Quantum Computer Centre")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 50_000, crystal: 40_000, deuterium: 50_000, population: 130_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.80)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.10)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 64_000)
        XCTAssertEqual(sut.durationFactor, 1.7)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1),
            Requirement(requires: .lifeformBuilding(.microchipAssemblyLine), level: 1),
            Requirement(requires: .lifeformBuilding(.productionAssemblyHall), level: 5)
        ])
    }
}
