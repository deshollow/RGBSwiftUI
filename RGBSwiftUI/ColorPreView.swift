//
//  ColorPreView.swift
//  RGBSwiftUI
//
//  Created by deshollow on 16.12.2023.
//

import SwiftUI

struct ColorPreView: View {
    @Binding var rgbDisplayColor: CGColor
    
    var body: some View {
        Image(systemName: "swift")
            .resizable(resizingMode: .tile)
            .frame(width: 230, height: 230)
            .shadow(radius: 15)
            .foregroundStyle(Color(cgColor: rgbDisplayColor))
    }
}


#Preview {
    ColorPreView(rgbDisplayColor: .constant(CGColor(gray: 0.2, alpha: 1)))
}
