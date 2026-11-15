//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AntimatterConvectorTests: XCTestCase {

    private let sut = AntimatterConvector()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_106)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Antimatter Convector")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 8_500, crystal: 5_000, deuterium: 3_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.25)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 2_000)
        XCTAssertEqual(sut.durationFactor, 1.35)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
            Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
            Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5)
        ])
    }
}
