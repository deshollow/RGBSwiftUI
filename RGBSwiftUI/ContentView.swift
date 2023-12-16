//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by deshollow on 16.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue: Double = 0
    @State private var greenSliderValue: Double = 0
    @State private var blueSliderValue: Double = 0
    
    @State var rgbDisplayValue = CGColor(
        red: 0/255,
        green: 0/255,
        blue: 0/255,
        alpha: 1
    )
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                IconView()
                Spacer()
                ColorPreView(rgbDisplayColor: $rgbDisplayValue)
                Spacer()
                SliderView(
                    value: $redSliderValue,
                    color: .red,
                    action: changeColor
                    
                )
                
                SliderView(
                    value: $greenSliderValue,
                    color: .green,
                    action: changeColor
                )
                SliderView(
                    value: $blueSliderValue,
                    color: .blue,
                    action: changeColor
                )
            }
            .padding(.top, 60)
            .padding(.bottom, 60)
        }
    }
    
    private func changeColor() {
        rgbDisplayValue = CGColor(
            red: redSliderValue / 255,
            green: greenSliderValue / 255,
            blue: blueSliderValue / 255,
            alpha: 1
        )
    }
}

#Preview {
    ContentView()
}
