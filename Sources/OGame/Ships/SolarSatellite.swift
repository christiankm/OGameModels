//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public struct SolarSatellite: Ship, ResourceProducer {

    public let id = 212
    public let name = "Solar Satellite"
    public let cost = Resources(crystal: 2_000, deuterium: 500)
    public let requirements = [
        Requirement(requires: .shipyard, level: 1)
    ]
    public let drives: [ShipDrive] = []
    public let baseShieldPower = 1
    public let baseWeaponPower = 1
    public let baseCargoCapacity = 0
    public let isCombatShip = false
    public let rapidfire: [GameId: Int] = [:]

    public init() {}

    /// The energy a number of solar satellites produce on a planet with the given temperature.
    public func energyProduction(
        temperature: Temperature,
        quantity: Quantity,
        characterClass: CharacterClass = .notSelected
    ) -> Int {
        let energy = (temperature.mean + 160) / 6 * quantity

        if characterClass.isCollector {
            return energy + Int((0.1 * Double(energy)).rounded())
        } else {
            return energy
        }
    }
}
