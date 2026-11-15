//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// The engine technology a ship flies with.
public enum Drive: Equatable {
    case combustion
    case impulse
    case hyperspace

    /// How much each research level of the drive adds to a ship's speed, in percent of its base speed.
    public var speedIncreasePerLevel: Int {
        switch self {
        case .combustion:
            return 10
        case .impulse:
            return 20
        case .hyperspace:
            return 30
        }
    }
}
