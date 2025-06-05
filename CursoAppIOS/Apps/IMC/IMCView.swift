//
//  IMCView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 03/06/2025.
//

import SwiftUI

struct IMCView: View {
    @State private var speed = 0.0
    @State var selectedGender: Int = 0
    @State var weight: Int = 0;
    @State var age: Int = 0;

    var body: some View {

        let starIcon: String = "star.fill"
        let heartIcon: String = "heart.fill"

        VStack {
            HStack {
                ToggleButtonView(
                    icon: heartIcon,
                    text: "Hombre",
                    gender: 1,
                    selectedGender: $selectedGender
                )
                ToggleButtonView(
                    icon: starIcon,
                    text: "Mujer",
                    gender: 2,
                    selectedGender: $selectedGender
                )
            }
            VStack {
                Text("Altura")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                TextInfoView(text: "\(Int(speed)) CM")
                SliderView(speed: $speed)
                    .foregroundColor(.input)
                    .tint(.input)
                    .padding(.horizontal, 10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.buttonBackground)
            HStack {
                CounterView(counter: $age, text: "Edad")
                CounterView(counter: $weight, text: "Peso")
            }
            NavigationStack {
                NavigationLink(destination: IMCResultView(weight: $weight, height: $speed)) {
                    Text("Calcular")
                        .foregroundColor(.input)
                        .bold()
                        .font(.system(size: 23))
                        .frame(maxWidth: .infinity, alignment: .center)
                }

            }
            .frame(height: 50)
            .background(.buttonBackground)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    IMCView()
}
