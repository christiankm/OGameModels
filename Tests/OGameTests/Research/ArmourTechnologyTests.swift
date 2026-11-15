//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ArmourTechnologyTests: XCTestCase {

    private let sut = ArmourTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 111)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Armour Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 1_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 2)
        ])
    }

    func testIsAvailable() throws {
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [.researchLab: 2]))
    }

    func testIsNotAvailableWithoutResearchLabLevel() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.researchLab: 1]))
    }
}
