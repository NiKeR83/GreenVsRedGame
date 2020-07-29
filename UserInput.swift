//
//  UserInput.swift
//  GreenVsRedGame
//
//  Created by Ivaylo Filipov on 29.07.20.
//  Copyright © 2020 Ivaylo Filipov. All rights reserved.
//

import Foundation

struct UserInput {

    var height = 0
    var width = 0
    var cellHeight = 0
    var cellWidth = 0

    mutating func askUserForInputHeight() {
        print("Please input a height value: ")
        let heightInput = readLine()
        if let heightInput = Int(heightInput!) {
            height = heightInput
        } else {
            print("Not a height valid input!")
            askUserForInputHeight()
        }
    }

    mutating func askUserForInputWidth() {
        print("Please input a width value: ")
        let widthInput = readLine()
        if let widthInput = Int(widthInput!) {
            width = widthInput
        } else {
            print("Not a valid width input!")
            askUserForInputWidth()
        }
    }

    mutating func checkWidhtHeightCondition() {
        if width > height {
            print("Width value must be less or equal height")
            askUserForInputWidth()
        } else if height >= 1000 {
            print("Height must be less than 1000!")
            askUserForInputHeight()
        }
    }

    mutating func askUserForTargetCellHeight() {
        print("PLease input a height value for target cell: ")
        let inputHeightForTargetCell = readLine()
        if let inputHeightForTargetCell = Int(inputHeightForTargetCell!) {
            if inputHeightForTargetCell >= 0 && inputHeightForTargetCell < height {
                cellHeight = inputHeightForTargetCell
            } else {
                print("Cell height must be less than \(height)")
                askUserForTargetCellHeight()
            }
        }
    }

    mutating func askUserForTargetCellWidth() {
        print("Please input a width value for target cell: ")
        let inputWidthForTargetCell = readLine()
        if let inputWidthForTargetCell = Int(inputWidthForTargetCell!) {
            if inputWidthForTargetCell >= 0 && inputWidthForTargetCell < width {
                cellWidth = inputWidthForTargetCell
            } else {
                print("Cell width must be less than \(width)")
                askUserForTargetCellWidth()
        }

    }
}
}

