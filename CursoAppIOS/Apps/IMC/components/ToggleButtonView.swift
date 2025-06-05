//
//  ToggleButtonView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 03/06/2025.
//

import SwiftUI

struct ToggleButtonView: View {
    let icon: String
    let text: String
    let gender: Int
    @Binding var selectedGender: Int

    func changeSelectedGender() {
        selectedGender = gender
        print(gender, selectedGender)
    }

    var body: some View {

        let buttonColor =
            if gender == selectedGender {
                Color.buttonBackgroundTouched
            } else {
                Color.buttonBackground
            }

        Button(action: changeSelectedGender) {
            VStack {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        height: 100
                    )
                    .foregroundColor(.white)
                TextInfoView(text: text)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(buttonColor)
    }
}
