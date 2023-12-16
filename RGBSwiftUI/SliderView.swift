//
//  SliderView.swift
//  RGBSwiftUI
//
//  Created by deshollow on 16.12.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let color: Color
    
    let action: () -> Void
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1) {
        } minimumValueLabel: {
            Text(value.formatted())
                .foregroundStyle(color)
                .frame(width: 55, height: 30)
                .font(.title2)
            
        } maximumValueLabel: {
            Text("255")
                .foregroundStyle(color)
                .frame(width: 55, height: 30)
                .font(.title2)
        }
        .onChange(of: value, action)
    }
}

#Preview {
    SliderView(value: .constant(0.0), color: .red, action: {})
}
