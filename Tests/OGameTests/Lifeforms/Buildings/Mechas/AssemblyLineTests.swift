//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class AssemblyLineTests: XCTestCase {

    private let sut = AssemblyLine()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_101)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Assembly Line")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 6, crystal: 2))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.21)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 40)
        XCTAssertEqual(sut.durationFactor, 1.22)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
