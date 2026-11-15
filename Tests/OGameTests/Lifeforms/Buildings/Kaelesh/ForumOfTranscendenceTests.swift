//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ForumOfTranscendenceTests: XCTestCase {

    private let sut = ForumOfTranscendence()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_105)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Forum of Transcendence")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 60_000, crystal: 30_000, deuterium: 50_000, population: 100_000_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.80)
        XCTAssertEqual(sut.populationIncreaseFactor, 1.10)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 64_000)
        XCTAssertEqual(sut.durationFactor, 1.8)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
            Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
            Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1),
            Requirement(requires: .lifeformBuilding(.bioModifier), level: 5)
        ])
    }
}
