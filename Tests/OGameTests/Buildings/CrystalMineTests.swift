//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CrystalMineTests: XCTestCase {

    private let sut = CrystalMine()

    func testId() throws {
        XCTAssertEqual(sut.id, 2)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Crystal Mine")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 48, crystal: 24))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.6)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testProduction() throws {
        XCTAssertEqual(sut.production(level: 25, plasmaTechnology: 7, universeSpeed: 7), 37_921 + 1_752 + 105)
    }

    func testEnergyConsumption() throws {
        XCTAssertEqual(sut.energyConsumption(level: 16), 736)
    }

    func testConstructionTime() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 5, roboticsFactory: 0, naniteFactory: 0, universeSpeed: 6), 75)
    }
}
