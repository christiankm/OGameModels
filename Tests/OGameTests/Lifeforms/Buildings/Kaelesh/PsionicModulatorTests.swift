//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class PsionicModulatorTests: XCTestCase {

    private let sut = PsionicModulator()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_110)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Psionic Modulator")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 150_000, crystal: 30_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.50)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 52_000)
        XCTAssertEqual(sut.durationFactor, 1.8)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.sanctuary), level: 42),
            Requirement(requires: .lifeformBuilding(.hallsOfRealisation), level: 1),
            Requirement(requires: .lifeformBuilding(.chrysalisAccelerator), level: 2)
        ])
    }
}
