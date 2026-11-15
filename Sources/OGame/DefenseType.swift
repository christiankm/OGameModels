//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public enum DefenseType: GameId, Identifiable, Equatable, CaseIterable {
    case rocketLauncher = 401
    case lightLaser = 402
    case heavyLaser = 403
    case gaussCannon = 404
    case ionCannon = 405
    case plasmaTurret = 406
    case smallShieldDome = 407
    case largeShieldDome = 408
    case antiBallisticMissile = 502
    case interplanetaryMissile = 503

    public var id: GameId {
        rawValue
    }

    public var defense: any Defense {
        switch self {
        case .rocketLauncher:
            return RocketLauncher()
        case .lightLaser:
            return LightLaser()
        case .heavyLaser:
            return HeavyLaser()
        case .gaussCannon:
            return GaussCannon()
        case .ionCannon:
            return IonCannon()
        case .plasmaTurret:
            return PlasmaTurret()
        case .smallShieldDome:
            return SmallShieldDome()
        case .largeShieldDome:
            return LargeShieldDome()
        case .antiBallisticMissile:
            return AntiBallisticMissile()
        case .interplanetaryMissile:
            return InterplanetaryMissile()
        }
    }
}
