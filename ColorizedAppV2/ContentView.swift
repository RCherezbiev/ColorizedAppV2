//
//  ContentView.swift
//  ColorizedAppV2
//
//  Created by Rustam Cherezbiev on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redColorValue = 0.3
    @State private var greenColorValue = 0.3
    @State private var blueColorValue = 0.3
    
    var body: some View {
        VStack(spacing: 35) {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    Color(
                        red: redColorValue / 255,
                        green: greenColorValue / 255,
                        blue: blueColorValue / 255
                    )
                )
                .stroke(Color.white, lineWidth: 4)
                .frame(width: 340, height: 150)
            VStack(spacing: 16) {
                SliderView(value: $redColorValue, color: .red)
                SliderView(value: $greenColorValue, color: .green)
                SliderView(value: $blueColorValue, color: .blue)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
