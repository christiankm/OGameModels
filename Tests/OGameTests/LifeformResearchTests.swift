//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LifeformResearchTests: XCTestCase {

    func testCostGrowsWithLevel() throws {
        let sut = CatalyserTechnology()
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 10_000, crystal: 6_000, deuterium: 1_000))
        XCTAssertEqual(sut.costToLevel(18), Resources(metal: 177_347_025, crystal: 106_408_215, deuterium: 17_734_702))
    }

    func testCostWithReduction() throws {
        let sut = CatalyserTechnology()
        XCTAssertEqual(
            sut.costToLevel(18, costReduction: 0.065),
            Resources(metal: 165_819_468, crystal: 99_491_681, deuterium: 16_581_946)
        )
    }

    func testConstructionTime() throws {
        XCTAssertEqual(IntergalacticEnvoys().constructionTime(toLevel: 2, universeSpeed: 8), 6 * 60)
    }

    func testHasNoRequirements() throws {
        XCTAssertTrue(LifeformResearchType.allCases.allSatisfy(\.research.requirements.isEmpty))
    }
}
