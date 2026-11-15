//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class CrystalFarmTests: XCTestCase {

    private let sut = CrystalFarm()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_102)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Crystal Farm")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 7, crystal: 2, energy: 10))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
        XCTAssertEqual(sut.energyIncreaseFactor, 1.03)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.21)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
