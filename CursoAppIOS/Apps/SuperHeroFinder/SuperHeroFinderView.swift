//
//  SuperHeroFinderView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 06/06/2025.
//

import SwiftUI

struct SuperHeroFinderView: View {
    @State private var query: String = ""

    var body: some View {
        VStack {
            TextField(
                "",
                text: $query,
                prompt:
                    Text("hola")
                    .bold()
                    .foregroundColor(.gray)
            )
            .onSubmit {
                Task {
                    do {
                        try await SuperHeroService().getSuperHeroesByQuery(
                            query: query
                        )
                    } catch {
                        print("Error submitting query: \(error)")
                    }
                }

                print("query", query)
            }
            .disableAutocorrection(true)
            .font(.title2)
            .padding(15)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.input, lineWidth: 1)
            )
            .padding(8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .foregroundColor(.white)
        .navigationTitle("Super Hero Finder")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SuperHeroFinderView()
}
