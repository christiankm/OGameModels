//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AntimatterCondenserTests: XCTestCase {

    private let sut = AntimatterCondenser()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_102)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Antimatter Condenser")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 6, crystal: 3, energy: 9))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
        XCTAssertEqual(sut.energyIncreaseFactor, 1.02)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.22)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
