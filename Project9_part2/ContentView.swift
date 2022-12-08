//
//  ContentView.swift
//  Project9_part2
//
//  Created by K.Takahama on R 4/12/07.
//

import SwiftUI

struct ColorCyclingCircle: View {
    var amount = 0.0
    var steps = 100
    
    var body: some View {
        ZStack {//挙動が遅いので.drawingGroup()を活用する
            ForEach(0..<steps) { value in
                Circle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(gradient: Gradient(colors: [
                            color(for: value, bringness: 1),
                            color(for: value, bringness: 0.5),
                        ]),
                            startPoint: .top,
                            endPoint: .bottom
                        ),
                        lineWidth: 2)
            }
        }
        .drawingGroup()
    }
    func color(for value: Int, bringness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        return Color(hue: targetHue, saturation: 1, brightness: bringness)
    }
}


struct ContentView: View {
    //Project9_part2 やっていきやしょう(๑>◡<๑)！！
    //同心円をさまざまな色でレンダリングするビューを作っていきます
    @State private var colorCycle = 0.0
    
    var body: some View {
        VStack {
            ColorCyclingCircle(amount: colorCycle)
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
