//
//  Line.swift
//  BezierCurvesPractice
//
//  Created by Leo A.Molina on 11/05/26.
//

import SwiftUI

struct Line {
    var points: [CGPoint] = []
    var start: CGPoint = .zero
    var pointsAmount: Int = 6
    
    static let yVariations: [CGFloat] = [10, 8, 6, 5]  // Used for covering the ratios of the screen a point will take e.g. 1/8 for the next move, 1/7 for the next move
    static let xVariations: [CGFloat] = [5, 4, 3, 2]
    
    mutating func createPath(width: CGFloat, height: CGFloat) {
        points = [start]
        pointsAmount = Int.random(in: 4...6)
        var currentY = start.y
        var currentX = start.x
        // Initializing to 0 in case of crashes
        var magnitudeY: CGFloat = 0
        var magnitudeX: CGFloat = 0
        
        for i in 0..<pointsAmount {
            // y just moves downwards
            magnitudeY = CGFloat(currentY + height/(Line.yVariations.randomElement() ?? 6))
            if i % 2 == 0 {
                // x moves to the right
                magnitudeX = CGFloat(currentX + width/(Line.xVariations.randomElement() ?? 6))
            } else {
                // x moves to the left
                magnitudeX = CGFloat(currentX - width/(Line.xVariations.randomElement() ?? 6))
            }
            points.append(CGPoint(x: magnitudeX, y: magnitudeY))
            currentY = magnitudeY
            currentX = magnitudeX
        }
    }
}
