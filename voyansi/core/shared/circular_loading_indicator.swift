//
//  circular_loading_indicator.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 28/09/24.
//

import SwiftUI

struct VCircularIndicator: View {
    var ringWidth: Double = 6
    @State private var fillPoint: Double = 0.0
    private var animation: Animation{
        Animation.linear(duration: 1).repeatForever(autoreverses: false)
    }
    var body: some View {
        Ring(fillPoint: fillPoint)
            .stroke(Color(.darkGray), lineWidth: ringWidth)
            .frame(width: 60, height: 60)
            .onAppear{
                withAnimation(self.animation) {
                    self.fillPoint = 1.0
                }
            }
            
    }
}

struct Ring: Shape{
    var fillPoint: Double = 0.0
    var offset: Double = 60
    private let delayPoint: Double = 0.5
    
    var animatableData: Double {
        get {fillPoint}
        set(newValue) {fillPoint=newValue}
    }
    func path(in rect: CGRect) -> Path
    {
//        print(self.fillPoint)
        let filled = fillPoint * 360
        let end: Double = filled > offset ? max(self.offset, filled) : filled
        let start: Double = end - self.offset
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.width/2, y: rect.height/2), radius: rect.width/2, startAngle: .degrees(start), endAngle: .degrees(end), clockwise: false)
        
        return path
    }
    
    
}

#Preview {
    VCircularIndicator()
}
