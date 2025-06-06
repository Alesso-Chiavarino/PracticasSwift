//
//  MainView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 29/05/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Aplicaciones de SwiftUI")
                    .bold()
                    .font(.system(size: 30))

                List {
                    NavigationLink(destination: { IMCView() }) {
                        Text("IMC App")
                            .underline()
                    }
                    NavigationLink(destination: { SuperHeroFinderView() }) {
                        Text("Super Hero Finder App")
                            .underline()
                    }
                }
                .scrollContentBackground(.hidden)
                .background(.backgroundApp)
                .foregroundColor(.black)
            }
            .padding(.top, 80)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
            .foregroundColor(.white)
        }

    }
}

#Preview {
    MainView()
}
