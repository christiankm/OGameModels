//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class TradeShipTests: XCTestCase {

    private let sut = TradeShip()

    func testId() throws {
        XCTAssertEqual(sut.id, 216)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Trade Ship")
    }

    func testCost() throws {
        XCTAssertEqual(sut.cost, Resources())
    }

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 0)
    }

//    func testRequirements() throws {
//        XCTAssertEqual(sut.requirements, [
//            Requirement(requires: .shipyard, level: 7),
//            Requirement(requires: .hyperspaceDrive, level: 4)
//        ])
//    }
}
