//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

/// A drive a ship can fly with, and what the ship's speed and fuel consumption are with it.
public struct ShipDrive: Equatable {
    public let drive: Drive
    public let baseSpeed: Int
    public let fuelConsumption: Int

    /// The research level of the drive the ship needs before it switches to this drive.
    public let minimumLevel: Level

    public init(drive: Drive, baseSpeed: Int, fuelConsumption: Int, minimumLevel: Level) {
        self.drive = drive
        self.baseSpeed = baseSpeed
        self.fuelConsumption = fuelConsumption
        self.minimumLevel = minimumLevel
    }
}
