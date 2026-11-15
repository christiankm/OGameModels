//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class GravitonTechnologyTests: XCTestCase {

    private let sut = GravitonTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 199)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Graviton Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(energy: 300_000))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 3.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 12)
        ])
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(2), Resources(energy: 900_000))
    }

    func testIsAvailable() throws {
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.researchLab: 12], energy: 299_999))
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [.researchLab: 12], energy: 300_000))
    }
}
