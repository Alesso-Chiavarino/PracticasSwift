//
//  IMCView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 03/06/2025.
//

import SwiftUI

struct IMCView: View {

    @State var selectedGender: Int = 0
    
    var body: some View {

        let starIcon: String = "star.fill"
        let heartIcon: String = "heart.fill"

        VStack {
            HStack {
                ToggleButtonView(
                    starIcon: heartIcon,
                    text: "Hombre",
                    gender: 1,
                    selectedGender: $selectedGender
                )
                ToggleButtonView(
                    starIcon: starIcon,
                    text: "Mujer",
                    gender: 2,
                    selectedGender: $selectedGender
                )
            }
            Text("Altura")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    IMCView()
}
