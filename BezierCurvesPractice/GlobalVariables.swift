//
//  File.swift
//  BezierCurvesPractice
//
//  Created by Leo A.Molina on 11/05/26.
//

import Foundation
import SwiftUI

let globalOpacity: Double = 0.8

let gradients: [Gradient] = [
    Gradient(colors: [.red.opacity(globalOpacity), .orange.opacity(globalOpacity)]),
    Gradient(colors: [.orange.opacity(globalOpacity), .yellow.opacity(globalOpacity)]),
    Gradient(colors: [.yellow.opacity(globalOpacity), .yellow.opacity(globalOpacity), .brown.opacity(globalOpacity)]),
    Gradient(colors: [.green.opacity(globalOpacity), .cyan.opacity(globalOpacity)]),
    Gradient(colors: [.teal.opacity(globalOpacity), .blue.opacity(globalOpacity), .cyan.opacity(globalOpacity)]),
    Gradient(colors: [.purple.opacity(globalOpacity), .blue.opacity(globalOpacity), .pink.opacity(globalOpacity)]),
]
