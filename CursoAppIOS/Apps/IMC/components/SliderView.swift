//
//  SliderView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 05/06/2025.
//

import SwiftUI

struct SliderView: View {
    @Binding var speed: Double;
    
    var body: some View {
        Slider(
            value: $speed,
            in: 0...250,
        )
        .foregroundColor(.input)
        .tint(.input)
    }
}
