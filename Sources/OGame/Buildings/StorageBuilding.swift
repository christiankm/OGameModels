//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol StorageBuilding: Building {
    /// Returns the capacity of the storage building at a given level.
    func capacity(atLevel level: Level) -> Int
}

extension StorageBuilding {
    public func capacity(atLevel level: Level) -> Int {
        0
        // TODO: what's math.E??
        // 5000 * (2.5 * pow(math.E, (20 * level) / 33))
    }
}
