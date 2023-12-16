//
//  IconView.swift
//  RGBSwiftUI
//
//  Created by deshollow on 16.12.2023.
//

import SwiftUI

struct IconView: View {
    
    var body: some View {
        Label("Choose Swift logo color", systemImage: "swift")
            .font(
                .system(
                    size: 25,
                    weight: .bold,
                    design: .rounded)
            )
    }
}

#Preview {
    IconView()
}
