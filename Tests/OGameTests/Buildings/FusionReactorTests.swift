//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class FusionReactorTests: XCTestCase {

    private let sut = FusionReactor()

    func testId() throws {
        XCTAssertEqual(sut.id, 12)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Fusion Reactor")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 900, crystal: 360, deuterium: 180))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.8)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .deuteriumSynthesizer, level: 5),
            Requirement(requires: .energyTechnology, level: 3)
        ])
    }

    func testIsAvailable() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.deuteriumSynthesizer: 4, .researchLab: 1, .energyTechnology: 3]))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.deuteriumSynthesizer: 5, .researchLab: 1, .energyTechnology: 2]))
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [.deuteriumSynthesizer: 5, .researchLab: 1, .energyTechnology: 3]))
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [.deuteriumSynthesizer: 6, .researchLab: 1, .energyTechnology: 4]))
    }

    func testConstructionTime() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 2, roboticsFactory: 3, naniteFactory: 0, universeSpeed: 7), 38)
    }

    func testProduction() throws {
        XCTAssertEqual(sut.production(level: 13, energyTechnology: 12), 3_002)
    }

    func testFuelConsumption() throws {
        XCTAssertEqual(sut.fuelConsumption(level: 9, universeSpeed: 7), 1_486)
        XCTAssertEqual(sut.fuelConsumption(level: 9, universeSpeed: 7, productionRatio: 0.7), 1_040)
    }
}
