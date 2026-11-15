//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public typealias Metal = Int
public typealias Crystal = Int
public typealias Deuterium = Int
public typealias Energy = Int
public typealias DarkMatter = Int
public typealias Population = Int
public typealias Food = Int

public struct Resources: Equatable {
    
    public let metal: Metal
    public let crystal: Crystal
    public let deuterium: Deuterium
    public let energy: Energy
    public let population: Population
    public let food: Food
    
    public init(metal: Metal = 0,
                crystal: Crystal = 0,
                deuterium: Deuterium = 0,
                energy: Energy = 0,
                population: Population = 0,
                food: Food = 0) {
        self.metal = metal
        self.crystal = crystal
        self.deuterium = deuterium
        self.energy = energy
        self.population = population
        self.food = food
    }
    
    public static func == (lhs: Resources, rhs: Resources) -> Bool {
        lhs.metal == rhs.metal &&
        lhs.crystal == rhs.crystal &&
        lhs.deuterium == rhs.deuterium &&
        lhs.energy == rhs.energy &&
        lhs.population == rhs.population &&
        lhs.food == rhs.food
    }
    
    public static func + (lhs: Resources, rhs: Resources) -> Resources {
        Resources(
            metal: lhs.metal + rhs.metal,
            crystal: lhs.crystal + rhs.crystal,
            deuterium: lhs.deuterium + rhs.deuterium,
            energy: lhs.energy + rhs.energy,
            population: lhs.population + rhs.population,
            food: lhs.food + rhs.food
        )
    }
    
    public static func * (lhs: Resources, rhs: Int) -> Resources {
        Resources(
            metal: lhs.metal * rhs,
            crystal: lhs.crystal * rhs,
            deuterium: lhs.deuterium * rhs,
            energy: lhs.energy * rhs,
            population: lhs.population * rhs,
            food: lhs.food * rhs
        )
    }
    
    /// Subtracts the given resources, without going below zero.
    public func subtracting(_ other: Resources) -> Resources {
        Resources(
            metal: Swift.max(metal - other.metal, 0),
            crystal: Swift.max(crystal - other.crystal, 0),
            deuterium: Swift.max(deuterium - other.deuterium, 0),
            energy: Swift.max(energy - other.energy, 0),
            population: Swift.max(population - other.population, 0),
            food: Swift.max(food - other.food, 0)
        )
    }
}

// MARK: CustomStringConvertible

extension Resources: CustomStringConvertible {

    /// Metal, crystal and deuterium with thousands separators, such as `[1,000|2,000|3,000]`.
    public var description: String {
        "[M: \(metal), C: \(crystal), D: \(deuterium)]"
    }
}
