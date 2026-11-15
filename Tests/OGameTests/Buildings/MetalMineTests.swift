//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MetalMineTests: XCTestCase {

    private let sut = MetalMine()

    func testId() throws {
        XCTAssertEqual(sut.id, 1)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Metal Mine")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 60, crystal: 15))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.5)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testIsAvailable() throws {
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .debrisField, levels: [:]))
        XCTAssertFalse(sut.isAvailable(on: .moon, levels: [:]))
    }

    func testProduction() throws {
        XCTAssertEqual(sut.production(level: 0, plasmaTechnology: 0, universeSpeed: 1), 30)
        XCTAssertEqual(sut.production(level: 1, plasmaTechnology: 0, universeSpeed: 1), 63)
        XCTAssertEqual(sut.production(level: 0, plasmaTechnology: 0, universeSpeed: 4), 120)
        XCTAssertEqual(sut.production(level: 1, plasmaTechnology: 0, universeSpeed: 4), 252)
        XCTAssertEqual(sut.production(level: 29, plasmaTechnology: 7, universeSpeed: 7), 96_606 + 6_762 + 210)
    }

    func testEnergyConsumption() throws {
        XCTAssertEqual(sut.energyConsumption(level: 29), 4_601)
    }

    func testConstructionTime() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 20, roboticsFactory: 3, naniteFactory: 0, universeSpeed: 7), 8_550)
        XCTAssertEqual(sut.constructionTime(toLevel: 4, roboticsFactory: 0, naniteFactory: 0, universeSpeed: 6), 30)
    }

    func testCostToDemolish() throws {
        XCTAssertEqual(sut.costToDemolish(level: 31, ionTechnology: 17), Resources(metal: 3_681_620, crystal: 920_404))
    }
}
