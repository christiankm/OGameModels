//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A player's research levels for the three drive technologies.
public struct DriveLevels: Equatable {
    public let combustion: Level
    public let impulse: Level
    public let hyperspace: Level

    public init(combustion: Level = 0, impulse: Level = 0, hyperspace: Level = 0) {
        self.combustion = combustion
        self.impulse = impulse
        self.hyperspace = hyperspace
    }

    public func level(of drive: Drive) -> Level {
        switch drive {
        case .combustion:
            return combustion
        case .impulse:
            return impulse
        case .hyperspace:
            return hyperspace
        }
    }
}
