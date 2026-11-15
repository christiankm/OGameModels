//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class TelekineticDriveTests: XCTestCase {

    private let sut = TelekineticDrive()

    func testId() throws {
        XCTAssertEqual(sut.id, 14_210)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Telekinetic Drive")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .kaelesh)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 85_000, crystal: 40_000, deuterium: 35_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.20)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 7_000)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
