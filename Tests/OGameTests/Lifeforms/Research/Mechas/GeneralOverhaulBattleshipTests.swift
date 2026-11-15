//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class GeneralOverhaulBattleshipTests: XCTestCase {

    private let sut = GeneralOverhaulBattleship()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_212)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "General Overhaul Battleship")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 160_000, crystal: 120_000, deuterium: 50_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 8_000)
        XCTAssertEqual(sut.durationFactor, 1.4)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
