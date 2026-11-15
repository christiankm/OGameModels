//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// Units describe military units (ships and defences) which are able to fire weapons and take damage.
public protocol Unit: FixedPriceable {

    var id: GameId { get }

    var points: Int { get }

    var baseStructuralIntegrity: Int { get }

    var baseShieldPower: Int { get }

    var baseWeaponPower: Int { get }

    /// The number of shots the unit gets against each unit, keyed by the unit's ID.
    var rapidfire: [GameId: Int] { get }

    func structuralIntegrity(armorTechnology: Level) -> Int
}

extension Unit {

    public var baseStructuralIntegrity: Int {
        cost.metal + cost.crystal
    }

    /// Strutural integrity of a unit.
    public func structuralIntegrity(armorTechnology: Level) -> Int {
        Int(Double(baseStructuralIntegrity) * (1 + Double(armorTechnology) * 0.1))
    }
}
