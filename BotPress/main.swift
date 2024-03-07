//
//  main.swift
//  BotPress
//
//  Created by Brian Moyou on 07.03.24.
//

import Foundation

func displayLines(_ length: Int, orientation: Orientation) {
    for _ in 0..<length {
        
    }
    
    switch orientation {
    case .north:
        for _ in 0..<length {
            print("|")
        }
    case .east:
        for _ in 0..<length {
            print("-", terminator: "")
        }
    case .south:
        for _ in 0..<length {
            print("|")
        }
    case .west:
        for _ in 0..<length {
            print("-", terminator: "")
        }
    }
}

func drawLine(_ length: Int, originX: Int, originY: Int) {
    for segment in 0..<originY {
        if segment != originY-1 {
            print()
        } else {
            print("", terminator: "")
        }
    }
    
    for i in 0..<length {
        for _ in 0..<originX + (i * 2) {
            print(" ", terminator: "")
        }
        print(".")
    }
    print()
}

func displayGrid(_ length: Int) {
    for _ in 0..<length {
        for _ in 0..<length {
            print(". ", terminator: "")
        }
        print(".")
    }
    print()
}

displayGrid(25)
