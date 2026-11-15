//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A number of ships of each type, such as the ships on a planet or in a fleet.
public struct Fleet: Equatable {

    private var counts: [ShipType: Quantity]

    public init(_ counts: [ShipType: Quantity] = [:]) {
        self.counts = counts.filter { $0.value > 0 }
    }

    /// Creates a fleet from quantities of game IDs, ignoring IDs that aren't ships.
    public init(quantifiables: [Quantifiable]) {
        self.init(quantifiables.reduce(into: [:]) { counts, quantifiable in
            if let shipType = ShipType(rawValue: quantifiable.id) {
                counts[shipType, default: 0] += quantifiable.quantity
            }
        })
    }

    public subscript(shipType: ShipType) -> Quantity {
        get {
            counts[shipType, default: 0]
        }
        set {
            counts[shipType] = newValue > 0 ? newValue : nil
        }
    }

    public var isEmpty: Bool {
        counts.isEmpty
    }

    /// The total number of ships.
    public var count: Quantity {
        counts.values.reduce(0, +)
    }

    /// Whether at least one ship can fly. Solar satellites and crawlers can't.
    public var canFly: Bool {
        counts.keys.contains { !$0.ship.drives.isEmpty }
    }

    /// The ships that can fly, as quantities of game IDs.
    public var quantifiables: [Quantifiable] {
        ShipType.allCases
            .filter { self[$0] > 0 && !$0.ship.drives.isEmpty }
            .map { Quantifiable(id: $0.id, quantity: self[$0]) }
    }

    /// The speed of the slowest ship that can fly, or `nil` when none can.
    public func speed(driveLevels: DriveLevels, characterClass: CharacterClass = .notSelected) -> Int? {
        counts.keys
            .filter { !$0.ship.drives.isEmpty }
            .map { $0.ship.speed(driveLevels: driveLevels, characterClass: characterClass) }
            .min()
    }

    /// The combined cargo capacity of every ship.
    public func cargoCapacity(
        hyperspaceTechnology: Level,
        characterClass: CharacterClass = .notSelected,
        probeRaids: Bool = false,
        isPioneers: Bool = false
    ) -> Int {
        counts.reduce(0) { capacity, entry in
            let shipCapacity = entry.key.ship.cargoCapacity(
                hyperspaceTechnology: hyperspaceTechnology,
                characterClass: characterClass,
                probeRaids: probeRaids,
                isPioneers: isPioneers
            )
            return capacity + shipCapacity * entry.value
        }
    }

    /// What it cost to build every ship.
    public var cost: Resources {
        counts.reduce(Resources()) { cost, entry in
            cost + entry.key.ship.cost * entry.value
        }
    }

    public static func + (lhs: Fleet, rhs: Fleet) -> Fleet {
        Fleet(lhs.counts.merging(rhs.counts, uniquingKeysWith: +))
    }
}
