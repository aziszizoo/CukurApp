//
//  WaveAnimation.swift
//  Cukur
//
//  Created by ZISACHMAD on 05/05/21.
//

import SwiftUI

struct WaveView: View {
    
    let screen = UIScreen.main.bounds
    @State var isAnimated = false
    
    var body: some View {
       return ZStack {
        let a = screen.height/6
        
        getWavePath(interval: screen.width, amplitude: 40, base:  100 + a)
                .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)).opacity(0.3))
                .offset(x: isAnimated ? -1*screen.width : 0)
                .animation(
                    Animation.linear(duration: 4)
                        .repeatForever(autoreverses: false)
                )
        getWavePath(interval: screen.width*1.2, amplitude: 30, base: 120 + a)
                .foregroundColor(Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)).opacity(0.3))
                .offset(x: isAnimated ? -1*screen.width*1.2 : 0)
                .animation(
                    Animation.linear(duration: 5)
                        .repeatForever(autoreverses: false)
                )
        getWavePath(interval: screen.width*1.5, amplitude: 10, base: 140 + a)
                .foregroundColor(Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)).opacity(0.3))
                .offset(x: isAnimated ? -1*screen.width*1.5 : 0)
                .animation(
                    Animation.linear(duration: 3)
                        .repeatForever(autoreverses: false)
                )
        }.onAppear() {
            self.isAnimated = true
        }
        
        
    }
    
    func getWavePath(interval: CGFloat, amplitude: CGFloat = 100, base: CGFloat = UIScreen.main.bounds.height/2) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: base))
            path.addCurve(
                to: CGPoint(x: 1*interval , y: base),
                control1: CGPoint(x: interval * (0.35), y: amplitude + base ),
                control2: CGPoint(x: interval * (0.65), y: -amplitude + base)
            )
            path.addCurve(
                to: CGPoint(x: 2*interval , y: base),
                control1: CGPoint(x: interval * (1.35), y: amplitude + base ),
                control2: CGPoint(x: interval * (1.65), y: -amplitude + base)
            )
            path.addLine(to: CGPoint(x: 2*interval, y: screen.height))
            path.addLine(to: CGPoint(x: 0, y: screen.height))
            
        }
    }
}
