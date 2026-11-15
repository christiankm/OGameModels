//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct TradeShip: Ship {

    public let id = 216
    public let name = "Trade Ship"
    public let cost = Resources()
    public let requirements: [Requirement] = []
    public let drives: [ShipDrive] = []
    public let baseShieldPower = 0
    public let baseWeaponPower = 0
    public let baseCargoCapacity = 0
    public let isCombatShip = false
    public let rapidfire: [GameId: Int] = [:]

    public init() {}
}
