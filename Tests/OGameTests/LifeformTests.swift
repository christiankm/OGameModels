//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LifeformTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(Lifeform.humans.id, 1)
        XCTAssertEqual(Lifeform.rocktal.id, 2)
        XCTAssertEqual(Lifeform.mechas.id, 3)
        XCTAssertEqual(Lifeform.kaelesh.id, 4)
    }

    func testName() throws {
        XCTAssertEqual(Lifeform.allCases.map(\.name), ["Humans", "Rock’tal", "Mechas", "Kaelesh"])
    }
}
