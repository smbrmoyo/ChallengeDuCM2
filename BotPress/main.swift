//
//  main.swift
//  BotPress
//
//  Created by Brian Moyou on 07.03.24.
//

import Foundation

func displayGrid(_ points: [Point]) {
    for i in 0..<25 {
        for j in 0..<25 {
            if points.contains(where: { $0 == Point(x: j, y: i) }) {
                print("x ", terminator: "")
            } else {
                print(". ", terminator: "")
            }
        }
        print(".")
    }
    print()
}

func buildLine(_ length: Int, origin: Point, orientation: Orientation) {
    var points: [Point] = []
    
    points.append(origin)
    
    switch orientation {
    case .north:
        for i in 1...length {
            points.append(Point(x: origin.x, y: origin.y - i))
        }
    default:
        print("")
    }
    
    displayGrid(points)
    
}

buildLine(5, origin: Point(x: 5, y: 5), orientation: .north)


