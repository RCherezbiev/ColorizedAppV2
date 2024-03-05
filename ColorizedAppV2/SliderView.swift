//
//  SliderView.swift
//  ColorizedAppV2
//
//  Created by Rustam Cherezbiev on 05.03.2024.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text(lround(value).formatted())
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
        }
    }
}

#Preview {
    SliderView(value: .constant(0.5), color: .red)
}
