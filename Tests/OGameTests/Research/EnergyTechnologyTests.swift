//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class EnergyTechnologyTests: XCTestCase {

    private let sut = EnergyTechnology()

    func testId() throws {
        XCTAssertEqual(sut.id, 113)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Energy Technology")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(crystal: 800, deuterium: 400))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 2.0)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .researchLab, level: 1)
        ])
    }

    func testConstructionTime() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 5, researchLab: 3, universeSpeed: 7), 1_645)
        XCTAssertEqual(sut.constructionTime(toLevel: 5, researchLab: 3, universeSpeed: 14), 822)
        XCTAssertEqual(sut.constructionTime(toLevel: 1, researchLab: 0, universeSpeed: 6), 480)
        XCTAssertEqual(sut.constructionTime(toLevel: 1, researchLab: 0, universeSpeed: 12), 240)
        XCTAssertEqual(sut.constructionTime(toLevel: 1, researchLab: 10, universeSpeed: 1), 261)
    }

    func testConstructionTimeWithTechnocratAndDiscoverer() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 1, researchLab: 10, universeSpeed: 1, hasTechnocrat: true), 196)
        XCTAssertEqual(
            sut.constructionTime(toLevel: 1, researchLab: 10, universeSpeed: 1, hasTechnocrat: true, characterClass: .discoverer),
            147
        )
    }
}
