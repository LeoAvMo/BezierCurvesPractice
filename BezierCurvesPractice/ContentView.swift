//
//  ContentView.swift
//  BezierCurvesPractice
//
//  Created by Leo A.Molina on 11/05/26.
//

import SwiftUI

struct ContentView: View {
    let leftGradient: Gradient = Gradient(colors: [.red.opacity(0.9), .orange.opacity(0.9)])
    let rightGradient: Gradient = Gradient(colors: [.blue.opacity(0.9), .green.opacity(0.9), .green.opacity(0.9)])
    @State private var leftLine: Line = Line()
    @State private var rightLine: Line = Line()
    var body: some View {
        
            ZStack {
                VStack {
                    GeometryReader { geometry in
                        let width = geometry.size.width
                        let height = geometry.size.height
                        Path { path in
                            path.move(to: leftLine.start)
                            for linepoint in leftLine.points {
                                
                                path.addLine(to: linepoint)
                                
                                /*
                                let randomControlPoint = CGPoint(x: linepoint.x + CGFloat.random(in: -0.1...0.1),
                                                                 y: linepoint.y + CGFloat.random(in: -0.1...0.1))
                                
                                path.addQuadCurve(to: linepoint, control: randomControlPoint)
                                
                                path.addArc(center: linepoint, radius: CGFloat.random(in: 40...80), startAngle: Angle(degrees: 50), endAngle: Angle.degrees(200), clockwise: true)
                                 */
                            }
                        }
                        .stroke(leftGradient, style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                        .onAppear {
                            leftLine.start = CGPoint(
                                x: width * CGFloat.random(in: 0...1),
                                y: height * CGFloat.random(in: 0...0.2))
                            
                            leftLine.createPath(width: width, height: height)
                        }
                    }
                }
                VStack {
                    GeometryReader { geometry in
                        let width = geometry.size.width
                        let height = geometry.size.height
                        Path { path in
                            path.move(to: rightLine.start)
                            for linepoint in rightLine.points {
                                
                                path.addLine(to: linepoint)
                                
                                /*
                                let randomControlPoint = CGPoint(x: linepoint.x + CGFloat.random(in: -0.1...0.1),
                                                                 y: linepoint.y + CGFloat.random(in: -0.1...0.1))
                                
                                path.addQuadCurve(to: linepoint, control: randomControlPoint)
                                
                                path.addArc(center: linepoint, radius: CGFloat.random(in: 40...80), startAngle: Angle(degrees: 50), endAngle: Angle.degrees(200), clockwise: true)
                                 */
                            }
                        }
                        .stroke(rightGradient, style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                        .onAppear {
                            rightLine.start = CGPoint(
                                x: width * CGFloat.random(in: 0...1),
                                y: height * CGFloat.random(in: 0...0.2))
                            rightLine.createPath(width: width, height: height)
                        }
                    }
                }
            
        }
        .background(Color(red: 248/255, green: 229/255, blue: 187/255))
        .background(ignoresSafeAreaEdges: .all)
        
    }
}

#Preview {
    ContentView()
}
