//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DiamondEnergyTransmitterTests: XCTestCase {

    private let sut = DiamondEnergyTransmitter()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_215)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Diamond Energy Transmitter")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 240_000, crystal: 120_000, deuterium: 120_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.30)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 9_500)
        XCTAssertEqual(sut.durationFactor, 1.3)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
