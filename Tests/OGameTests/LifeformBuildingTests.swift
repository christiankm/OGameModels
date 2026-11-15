//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LifeformBuildingTests: XCTestCase {

    func testCostGrowsWithLevel() throws {
        let sut = ResidentialSector()
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 7, crystal: 2))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 16, crystal: 4))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 30, crystal: 8))
        XCTAssertEqual(sut.costToLevel(35), Resources(metal: 120_594, crystal: 34_455))
    }

    func testEnergyCostUsesItsOwnFactor() throws {
        let sut = BiosphereFarm()
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 5, crystal: 2, energy: 8))
        XCTAssertEqual(sut.costToLevel(22), Resources(metal: 8_499, crystal: 3_399, energy: 272))
    }

    func testEnergyCostOfAntimatterCondenser() throws {
        let sut = AntimatterCondenser()
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 6, crystal: 3, energy: 9))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 14, crystal: 7, energy: 18))
        XCTAssertEqual(sut.costToLevel(3), Resources(metal: 25, crystal: 12, energy: 28))
        XCTAssertEqual(sut.costToLevel(4), Resources(metal: 41, crystal: 20, energy: 38))
    }

    func testDeuteriumCost() throws {
        let sut = ResearchCentre()
        XCTAssertEqual(sut.costToLevel(1), Resources(metal: 20_000, crystal: 25_000, deuterium: 10_000))
        XCTAssertEqual(sut.costToLevel(2), Resources(metal: 52_000, crystal: 65_000, deuterium: 26_000))
    }

    func testPopulationCostDoesNotGrowWithLevel() throws {
        let sut = AcademyOfSciences()
        XCTAssertEqual(sut.costToLevel(1).population, 20_000_000)
        XCTAssertEqual(sut.costToLevel(2).population, 22_000_000)
    }

    func testConstructionTime() throws {
        XCTAssertEqual(
            ResidentialSector().constructionTime(toLevel: 23, roboticsFactory: 5, naniteFactory: 0, universeSpeed: 8),
            25 * 60 + 36
        )
        XCTAssertEqual(
            ResearchCentre().constructionTime(toLevel: 2, roboticsFactory: 5, naniteFactory: 0, universeSpeed: 8),
            17 * 60 + 21
        )
        XCTAssertEqual(
            AssemblyLine().constructionTime(toLevel: 42, roboticsFactory: 10, naniteFactory: 7, universeSpeed: 8),
            10 * 60 + 32
        )
    }

    func testIsAvailable() throws {
        let sut = ResearchCentre()
        let levels: [RequirementType: Level] = [
            .lifeformBuilding(.residentialSector): 21,
            .lifeformBuilding(.biosphereFarm): 22
        ]
        XCTAssertTrue(sut.isAvailable(on: .planet, levels: levels))
        XCTAssertFalse(sut.isAvailable(on: .moon, levels: levels))
        XCTAssertFalse(sut.isAvailable(on: .planet, levels: [.lifeformBuilding(.residentialSector): 21]))
    }
}
