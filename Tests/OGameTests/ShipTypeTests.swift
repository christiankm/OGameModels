//
//  OGame
//  Copyright © 2022 Christian Mitteldorf. All rights reserved.
//  MIT license, see LICENSE file for details.
//

import OGame
import XCTest

final class ShipTypeTests: XCTestCase {

    func testId() throws {
        XCTAssertEqual(ShipType.lightFighter.id, 204)
        XCTAssertEqual(ShipType.heavyFighter.id, 205)
        XCTAssertEqual(ShipType.cruiser.id, 206)
        XCTAssertEqual(ShipType.battleship.id, 207)
        XCTAssertEqual(ShipType.battlecruiser.id, 215)
        XCTAssertEqual(ShipType.bomber.id, 211)
        XCTAssertEqual(ShipType.destroyer.id, 213)
        XCTAssertEqual(ShipType.deathstar.id, 214)
        XCTAssertEqual(ShipType.reaper.id, 218)
        XCTAssertEqual(ShipType.pathfinder.id, 219)
        XCTAssertEqual(ShipType.smallCargo.id, 202)
        XCTAssertEqual(ShipType.largeCargo.id, 203)
        XCTAssertEqual(ShipType.colonyShip.id, 208)
        XCTAssertEqual(ShipType.recycler.id, 209)
        XCTAssertEqual(ShipType.espionageProbe.id, 210)
        XCTAssertEqual(ShipType.solarSatellite.id, 212)
        XCTAssertEqual(ShipType.tradeShip.id, 216)
        XCTAssertEqual(ShipType.crawler.id, 217)
    }

    func testAllCases() throws {
        XCTAssertEqual(ShipType.allCases.count, 17)
    }

    func testShipMatchesType() throws {
        for shipType in ShipType.allCases {
            XCTAssertEqual(shipType.ship.id, shipType.id, "\(shipType)")
        }
    }

    func testShipNames() throws {
        XCTAssertEqual(ShipType.allCases.map(\.ship.name), [
            "Light Fighter", "Heavy Fighter", "Cruiser", "Battleship", "Battlecruiser", "Bomber",
            "Destroyer", "Deathstar", "Reaper", "Pathfinder", "Small Cargo", "Large Cargo",
            "Colony Ship", "Recycler", "Espionage Probe", "Solar Satellite", "Crawler"
        ])
    }
}
