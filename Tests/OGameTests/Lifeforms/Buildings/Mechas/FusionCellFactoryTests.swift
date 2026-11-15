//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class FusionCellFactoryTests: XCTestCase {

    private let sut = FusionCellFactory()

    func testId() throws {
        XCTAssertEqual(sut.id, 13_102)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Fusion Cell Factory")
    }

    func testLifeform() throws {
        XCTAssertEqual(sut.lifeform, .mechas)
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 5, crystal: 2, energy: 8))
    }

    func testIncreaseFactors() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.18)
        XCTAssertEqual(sut.energyIncreaseFactor, 1.02)
    }

    func testDuration() throws {
        XCTAssertEqual(sut.baseDuration, 48)
        XCTAssertEqual(sut.durationFactor, 1.2)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }
}
