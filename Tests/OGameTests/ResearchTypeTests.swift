//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ResearchTypeTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(ResearchType.energyTechnology.id, 113)
        XCTAssertEqual(ResearchType.laserTechnology.id, 120)
        XCTAssertEqual(ResearchType.ionTechnology.id, 121)
        XCTAssertEqual(ResearchType.hyperspaceTechnology.id, 114)
        XCTAssertEqual(ResearchType.plasmaTechnology.id, 122)
        XCTAssertEqual(ResearchType.combustionDrive.id, 115)
        XCTAssertEqual(ResearchType.impulseDrive.id, 117)
        XCTAssertEqual(ResearchType.hyperspaceDrive.id, 118)
        XCTAssertEqual(ResearchType.espionageTechnology.id, 106)
        XCTAssertEqual(ResearchType.computerTechnology.id, 108)
        XCTAssertEqual(ResearchType.astrophysics.id, 124)
        XCTAssertEqual(ResearchType.intergalacticResearchNetwork.id, 123)
        XCTAssertEqual(ResearchType.gravitonTechnology.id, 199)
        XCTAssertEqual(ResearchType.weaponsTechnology.id, 109)
        XCTAssertEqual(ResearchType.shieldingTechnology.id, 110)
        XCTAssertEqual(ResearchType.armourTechnology.id, 111)
    }

    func testAllCases() throws {
        XCTAssertEqual(ResearchType.allCases.count, 16)
    }

    func testResearchMatchesType() throws {
        for researchType in ResearchType.allCases {
            XCTAssertEqual(researchType.research.id, researchType.id, "\(researchType)")
        }
    }

    func testResearchNames() throws {
        XCTAssertEqual(ResearchType.allCases.map(\.research.name), [
            "Energy Technology", "Laser Technology", "Ion Technology", "Hyperspace Technology",
            "Plasma Technology", "Combustion Drive", "Impulse Drive", "Hyperspace Drive",
            "Espionage Technology", "Computer Technology", "Astrophysics", "Intergalactic Research Network",
            "Graviton Technology", "Weapons Technology", "Shielding Technology", "Armour Technology"
        ])
    }
}
