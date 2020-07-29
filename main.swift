//
//  main.swift
//  GreenVsRedGame
//
//  Created by Ivaylo Filipov on 29.07.20.
//  Copyright © 2020 Ivaylo Filipov. All rights reserved.
//

import Foundation


// Unfortunately i did not finish the assignment! I do not have excuse for that but i know this task does not show my knowledge in iOS development


var user = UserInput()
user.askUserForInputWidth()
user.askUserForInputHeight()
user.checkWidhtHeightCondition()
user.askUserForTargetCellHeight()
user.askUserForTargetCellWidth()

print(user.width)
print(user.height)
print(user.cellWidth)
print(user.cellHeight)

var generationZero = CreateGrid()
generationZero.setGenerationZero(width: user.width, height: user.height)
print(generationZero)


