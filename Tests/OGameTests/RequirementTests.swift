//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class RequirementTests: XCTestCase {

    func testInit() throws {
        let requirement1 = Requirement(requires: .deuteriumSynthesizer, level: 5)
        XCTAssertEqual(requirement1.requires, .deuteriumSynthesizer)
        XCTAssertEqual(requirement1.level, 5)
    }
}
