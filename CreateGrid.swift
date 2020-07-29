//
//  CreateGrid.swift
//  GreenVsRedGame
//
//  Created by Ivaylo Filipov on 29.07.20.
//  Copyright © 2020 Ivaylo Filipov. All rights reserved.
//

import Foundation

struct CreateGrid {
    var generationZero = [[Int]]()

    mutating func setGenerationZero(width: Int, height: Int) -> [[Int]] {
        // Initializing temporary array of arrays of Integers
        var localGrid = [[Int]]()
        // Filling the array with random values in a range of 0 to 1
        for row in 0..<width {
            localGrid.append([Int]())
            for _ in 0..<height{
                localGrid[row].append(Int.random(in: 0...1))
            }
        }
        generationZero = localGrid

        return generationZero
    }
}
