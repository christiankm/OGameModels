//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CloningLaboratoryTests: XCTestCase {

    private let sut = CloningLaboratory()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_107)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Cloning Laboratory")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 15_000, crystal: 15_000, deuterium: 5_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 12_000)
        XCTAssertEqual(sut.durationFactor, 1.20)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 20),
            Requirement(requires: .lifeformBuilding(.antimatterCondenser), level: 21),
            Requirement(requires: .lifeformBuilding(.vortexChamber), level: 5),
            Requirement(requires: .lifeformBuilding(.antimatterConvector), level: 3)
        ])
    }
}
