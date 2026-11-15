//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class DeuteriumSynthesizerTests: XCTestCase {

    private let sut = DeuteriumSynthesizer()

    func testId() throws {
        XCTAssertEqual(sut.id, 3)
    }

    func testName() throws {
        XCTAssertEqual(sut.name, "Deuterium Synthesizer")
    }

    func testBaseCost() throws {
        XCTAssertEqual(sut.baseCost, Resources(metal: 225, crystal: 75))
    }

    func testCostIncreaseFactor() throws {
        XCTAssertEqual(sut.costIncreaseFactor, 1.5)
    }

    func testRequirements() throws {
        XCTAssertEqual(sut.requirements, [])
    }

    func testCostToLevel() throws {
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 225, crystal: 75))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 337, crystal: 112))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 506, crystal: 168))
        XCTAssertEqual(sut.costToLevel(4), Resources(metal: 759, crystal: 253))
        XCTAssertEqual(sut.costToLevel(5), Resources(metal: 1_139, crystal: 379))
        XCTAssertEqual(sut.costToLevel(11), Resources(metal: 12_974, crystal: 4_324))
    }

    func testProduction() throws {
        let temperature = Temperature(min: -23, max: 17)
        XCTAssertEqual(sut.production(level: 28, plasmaTechnology: 15, temperature: temperature, universeSpeed: 7), 40_699)
    }

    func testEnergyConsumption() throws {
        XCTAssertEqual(sut.energyConsumption(level: 26), 6_198)
    }

    func testConstructionTime() throws {
        XCTAssertEqual(sut.constructionTime(toLevel: 9, roboticsFactory: 0, naniteFactory: 0, universeSpeed: 6), 1_845)
    }
}
