//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class HighscoreTests: XCTestCase {

    func testCategory() throws {
        XCTAssertEqual(HighscoreCategory.player.rawValue, 1)
        XCTAssertEqual(HighscoreCategory.alliance.rawValue, 2)
    }

    func testType() throws {
        XCTAssertEqual(HighscoreType.points.rawValue, 0)
        XCTAssertEqual(HighscoreType.economy.rawValue, 1)
        XCTAssertEqual(HighscoreType.technology.rawValue, 2)
        XCTAssertEqual(HighscoreType.military.rawValue, 3)
        XCTAssertEqual(HighscoreType.militaryLost.rawValue, 4)
        XCTAssertEqual(HighscoreType.militaryBuilt.rawValue, 5)
        XCTAssertEqual(HighscoreType.militaryDestroyed.rawValue, 6)
        XCTAssertEqual(HighscoreType.honor.rawValue, 7)
    }
}
