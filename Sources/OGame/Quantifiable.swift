//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public typealias Quantity = Int

/// A number of something identified by its game ID, such as 10 light fighters.
public struct Quantifiable: Equatable {
    public let id: GameId
    public let quantity: Quantity

    public init(id: GameId, quantity: Quantity) {
        self.id = id
        self.quantity = quantity
    }
}
