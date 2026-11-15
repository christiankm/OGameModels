//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class TerraformerTests: XCTestCase {

    private let sut = Terraformer()

    func testId() throws {
        XCTAssertEqual(sut.id, 33)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Terraformer")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(crystal: 50_000, deuterium: 100_000, energy: 1_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .naniteFactory, level: 1),
            Requirement(requires: .energyTechnology, level: 12)
        ])
    }

    func testIsAvailable() throws {
        let levels: [RequirementType: Level] = [
            .naniteFactory: 1, .roboticsFactory: 10, .researchLab: 1, .energyTechnology: 12, .computerTechnology: 10
        ]
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: levels))
    }

    func testIsNotAvailableWithoutEnergyTechnology() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.naniteFactory: 1, .energyTechnology: 11]))
    }

    func testCannotBeDemolished() throws {
        XCTAssertFalse((sut as Any) is any Demolishable)
    }
}
