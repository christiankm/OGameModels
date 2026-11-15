//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class LifeformTypesTests: XCTestCase {

    func testBuildingTypes() throws {
        XCTAssertEqual(LifeformBuildingType.allCases.count, 48)
        for buildingType in LifeformBuildingType.allCases {
            XCTAssertEqual(buildingType.building.id, buildingType.id, "\(buildingType)")
        }
    }

    func testTwelveBuildingsPerLifeform() throws {
        for lifeform in Lifeform.allCases {
            XCTAssertEqual(LifeformBuildingType.allCases.filter { $0.lifeform == lifeform }.count, 12, "\(lifeform)")
        }
    }

    func testResearchTypes() throws {
        XCTAssertEqual(LifeformResearchType.allCases.count, 72)
        for researchType in LifeformResearchType.allCases {
            XCTAssertEqual(researchType.research.id, researchType.id, "\(researchType)")
        }
    }

    func testEighteenResearchesPerLifeform() throws {
        for lifeform in Lifeform.allCases {
            XCTAssertEqual(LifeformResearchType.allCases.filter { $0.lifeform == lifeform }.count, 18, "\(lifeform)")
        }
    }
}
