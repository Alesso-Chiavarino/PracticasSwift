//
//  MainView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 29/05/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("Aplicaciones de SwiftUI")
        
        NavigationStack {
            NavigationLink(destination: {IMCView()}) {
                Text("IMC")
            }
        }
    }
}

#Preview {
    MainView()
}
