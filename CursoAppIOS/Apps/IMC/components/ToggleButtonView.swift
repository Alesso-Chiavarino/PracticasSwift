//
//  ToggleButtonView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 03/06/2025.
//

import SwiftUI

struct ToggleButtonView: View {
    let starIcon: String;
    let text: String;
    let gender: Int;
    @Binding var selectedGender: Int;
    
    func changeSelectedGender() -> Void {
        selectedGender = gender
        print(gender, selectedGender)   
    }

    var body: some View {
        
        let buttonColor = if(gender == selectedGender){
            Color.buttonBackgroundTouched
        }else{
            Color.buttonBackground
        }
            
        Button(action: changeSelectedGender) {
            VStack {
                Image(systemName: starIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        height:  100
                    )
                    .foregroundColor(.white)
                Text(text)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(buttonColor)
    }
}
