//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class UnitTests: XCTestCase {

    private let sut = Battlecruiser()

    func testBaseStructuralIntegrity() throws {
        XCTAssertEqual(sut.baseStructuralIntegrity, 70_000)
    }

    func testStructuralIntegrity() throws {
        XCTAssertEqual(sut.structuralIntegrity(armorTechnology: 1), 77_000)
        XCTAssertEqual(sut.structuralIntegrity(armorTechnology: 5), 105_000)
        XCTAssertEqual(sut.structuralIntegrity(armorTechnology: 12), 154_000)
        XCTAssertEqual(sut.structuralIntegrity(armorTechnology: 23), 231_000)
    }

    func testConstructionTime() throws {
        let lightFighter = LightFighter()
        XCTAssertEqual(lightFighter.constructionTime(count: 1, shipyard: 0, naniteFactory: 0, universeSpeed: 1), 5_760)
        XCTAssertEqual(lightFighter.constructionTime(count: 3, shipyard: 0, naniteFactory: 0, universeSpeed: 1), 17_280)
        XCTAssertEqual(lightFighter.constructionTime(count: 1, shipyard: 4, naniteFactory: 1, universeSpeed: 2), 288)
    }

    func testConstructionTimeIsAtLeastOneSecondPerUnit() throws {
        XCTAssertEqual(RocketLauncher().constructionTime(count: 10, shipyard: 12, naniteFactory: 10, universeSpeed: 8), 10)
    }
}
