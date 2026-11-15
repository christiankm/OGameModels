//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MicrochipAssemblyLineTests: XCTestCase {

    private let sut = MicrochipAssemblyLine()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_108)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Microchip Assembly Line")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 50_000, crystal: 20_000, deuterium: 30_000))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.07)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 12_000)
        XCTAssertEqual(sut.durationFactor, 1.17)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [
            Requirement(requires: .lifeformBuilding(.assemblyLine), level: 41),
            Requirement(requires: .lifeformBuilding(.updateNetwork), level: 1)
        ])
    }
}
