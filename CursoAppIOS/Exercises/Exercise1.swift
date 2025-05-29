//
//  ContentView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 28/05/2025.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)

                    Rectangle()
                        .foregroundColor(.orange)

                    Rectangle()
                        .foregroundColor(.yellow)
                }
                Rectangle()
                    .foregroundColor(.orange)
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                    .foregroundColor(.black)
                Circle()
                    .foregroundColor(.purple)
            }
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.orange)
                }
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)

                    Rectangle()
                        .foregroundColor(.orange)

                    Rectangle()
                        .foregroundColor(.yellow)
                }
            }
        }
        .background(.red)
    }
}

#Preview {
    Exercise1()
}
