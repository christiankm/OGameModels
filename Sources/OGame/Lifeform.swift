//
//  OGame
//  Copyright © 2026 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import Foundation

public enum Lifeform: CaseIterable {
    case humans
    case rocktal
    case mechas
    case kaelesh
}

extension Lifeform: Identifiable {
    public var id: GameId {
        switch self {
        case .humans:
            return 1
        case .rocktal:
            return 2
        case .mechas:
            return 3
        case .kaelesh:
            return 4
        }
    }
}

extension Lifeform: Nameable {
    public var name: String {
        switch self {
        case .humans:
            return "Humans"
        case .mechas:
            return "Mechas"
        case .kaelesh:
            return "Kaelesh"
        case .rocktal:
            return "Rock’tal"
        }
    }
}
