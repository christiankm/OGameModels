//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class BioModifierTests: XCTestCase {

    private let sut = BioModifier()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_109)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Bio Modifier")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 87_500, crystal: 25_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
            Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
            Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 1)
        ])
    }
}
