//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// Whether a highscore ranks players or alliances.
public enum HighscoreCategory: Int, CaseIterable {
    case player = 1
    case alliance = 2
}

/// The kind of points a highscore ranks by.
public enum HighscoreType: Int, CaseIterable {
    case points = 0
    case economy = 1
    case technology = 2
    case military = 3
    case militaryLost = 4
    case militaryBuilt = 5
    case militaryDestroyed = 6
    case honor = 7
}
