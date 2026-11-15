//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class MissionTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(Mission.attack.rawValue, 1)
        XCTAssertEqual(Mission.acsAttack.rawValue, 2)
        XCTAssertEqual(Mission.transport.rawValue, 3)
        XCTAssertEqual(Mission.deployment.rawValue, 4)
        XCTAssertEqual(Mission.defend.rawValue, 5)
        XCTAssertEqual(Mission.espionage.rawValue, 6)
        XCTAssertEqual(Mission.colonization.rawValue, 7)
        XCTAssertEqual(Mission.harvest.rawValue, 8)
        XCTAssertEqual(Mission.destroy.rawValue, 9)
        XCTAssertEqual(Mission.missileAttack.rawValue, 10)
        XCTAssertEqual(Mission.expedition.rawValue, 15)
        XCTAssertEqual(Mission.trade.rawValue, 16)
    }

    func testDescription() throws {
        XCTAssertEqual(Mission.attack.description, "Attack")
        XCTAssertEqual(Mission.acsAttack.description, "ACS Attack")
        XCTAssertEqual(Mission.transport.description, "Transport")
        XCTAssertEqual(Mission.deployment.description, "Deploy")
        XCTAssertEqual(Mission.defend.description, "Defend")
        XCTAssertEqual(Mission.espionage.description, "Spy")
        XCTAssertEqual(Mission.colonization.description, "Colonize")
        XCTAssertEqual(Mission.harvest.description, "Harvest")
        XCTAssertEqual(Mission.destroy.description, "Destroy")
        XCTAssertEqual(Mission.missileAttack.description, "Missile Attack")
        XCTAssertEqual(Mission.expedition.description, "Expedition")
        XCTAssertEqual(Mission.trade.description, "Trade")
    }
}
