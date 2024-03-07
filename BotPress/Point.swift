//
//  Point.swift
//  BotPress
//
//  Created by Brian Moyou on 07.03.24.
//

import Foundation

/**
 Model representing a point on a grid
 */
struct Point: Equatable {
    var x: Int
    var y: Int
    
    static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}
