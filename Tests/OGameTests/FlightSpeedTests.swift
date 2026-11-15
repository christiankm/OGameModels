//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class FlightSpeedTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(FlightSpeed.fivePercent.id, 5)
        XCTAssertEqual(FlightSpeed.hundredPercent.id, 100)
    }

    func testDescription() throws {
        XCTAssertEqual(FlightSpeed.fivePercent.description, "5%")
        XCTAssertEqual(FlightSpeed.tenPercent.description, "10%")
        XCTAssertEqual(FlightSpeed.fiftyPercent.description, "50%")
        XCTAssertEqual(FlightSpeed.hundredPercent.description, "100%")
    }
}
