//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class VortexChamberTests: XCTestCase {

    private let sut = VortexChamber()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_103)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Vortex Chamber")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 20_000, crystal: 20_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 16_000)
        XCTAssertEqual(sut.durationFactor, 1.25)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
            Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21)
        ])
    }
}
