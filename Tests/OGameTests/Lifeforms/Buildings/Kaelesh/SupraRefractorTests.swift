//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class SupraRefractorTests: XCTestCase {

    private let sut = SupraRefractor()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_112)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Suprarefractor")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 500_000, crystal: 250_000, deuterium: 250_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.40)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 95_000)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
            Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
            Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5),
            Requirement(requires: .lifeformBuilding(.antimatterConvector), level: 3),
            Requirement(requires: .lifeformBuilding(.cloningLaboratory), level: 4),
            Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
            Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 5),
            Requirement(requires: .lifeformBuilding(.bioModifier), level: 6),
            Requirement(requires: .lifeformBuilding(.forumOfTranscendence), level: 5),
            Requirement(requires: .lifeformBuilding(.shipManufacturingHall), level: 5)
        ])
    }
}
