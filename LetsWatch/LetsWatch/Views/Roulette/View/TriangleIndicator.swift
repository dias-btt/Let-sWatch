//
//  TriangleIndicatorView.swift
//  LetsWatch
//
//  Created by Диас Сайынов on 15.06.2024.
//

import SwiftUI

struct TriangleIndicator: View {
    var body: some View {
        Triangle()
            .fill(Color("Primary"))
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
}
