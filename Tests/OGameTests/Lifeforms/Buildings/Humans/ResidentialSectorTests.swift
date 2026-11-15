//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ResidentialSectorTests: XCTestCase {

    private let sut = ResidentialSector()

    func testId() throws {
        XCTAssertEqual(sut.id, 11_101)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Residential Sector")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .humans)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 7, crystal: 2))
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
