//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol StorageBuilding: Building, Demolishable {
    /// Returns the capacity of the storage building at a given level.
    func capacity(atLevel level: Level) -> Int
}

extension StorageBuilding {

    public var celestialTypes: Set<CelestialType> {
        [.planet, .moon]
    }

    public func capacity(atLevel level: Level) -> Int {
        5_000 * Int((2.5 * exp(20 * Double(level) / 33)).rounded(.down))
    }
}
