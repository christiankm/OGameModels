//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public protocol Defense: Unit, Buildable, FixedPriceable, Identifiable, Hashable, CustomStringConvertible {

    var id: GameId { get }
    var name: String { get }
    var requirements: [Requirement] { get }
}

// MARK: Hashable

extension Defense {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: CustomStringConvertible

extension Defense {

    public var description: String {
        name
    }
}
