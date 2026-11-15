//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CombustionDriveTests: XCTestCase {

    private let sut = CombustionDrive()

    func testId() throws {
        XCTAssertEqual(sut.id, 115)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Combustion Drive")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 400, deuterium: 600))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .energyTechnology, level: 1)
        ])
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(6), Resources(metal: 12_800, deuterium: 19_200))
    }

    func testIsAvailable() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.energyTechnology: 1]))
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [.researchLab: 1, .energyTechnology: 1]))
        XCTAssertFalse(sut.isAvailable(on: .moon, levels: [.energyTechnology: 1]))
    }
}
