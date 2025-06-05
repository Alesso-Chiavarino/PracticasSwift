//
//  CounterView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 05/06/2025.
//

import SwiftUI

struct CounterView: View {
    @Binding var counter: Int;
    var text: String
    
    func add() {
        counter += 1
    }

    func substract() {
        counter -= 1
    }

    var body: some View {

        let plusIcon: String = "plus"
        let minIcon: String = "minus"

        VStack {
            Text(text)
                .foregroundColor(.gray)
                .font(.system(size: 16))
            TextInfoView(text: String(counter))
            HStack {
                Button(action: substract) {
                    Image(systemName: minIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Circle().fill(Color.input))
                }

                Button(action: add) {
                    Image(systemName: plusIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Circle().fill(Color.input))
                }
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.buttonBackground)
    }
}
