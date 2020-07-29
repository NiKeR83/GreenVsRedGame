//
//  Cell.swift
//  GreenVsRedGame
//
//  Created by Ivaylo Filipov on 29.07.20.
//  Copyright © 2020 Ivaylo Filipov. All rights reserved.
//

import Foundation

public enum State {
    case green
    case red
}
struct Cell {
    let x: Int
    let y: Int
    var state: State

    func isNeighbor(to cell: Cell) -> Bool {
        let xDelta = abs(self.x - cell.x)
        let yDelta = abs(self.y - cell.y)

        switch (xDelta, yDelta) {
        case (1, 1), (0, 1), (1, 0):
            return true
        default:
            return false
        }
    }
}
