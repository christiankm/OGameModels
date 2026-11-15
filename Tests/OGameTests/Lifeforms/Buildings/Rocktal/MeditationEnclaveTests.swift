//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MeditationEnclaveTests: XCTestCase {

    private let sut = MeditationEnclave()

    func testId() throws {
        XCTAssertEqual(sut.id, 12_101)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Meditation Enclave")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .rocktal)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 9, crystal: 3))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.21)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
