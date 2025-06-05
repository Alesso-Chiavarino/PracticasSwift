//
//  TextInfoView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 05/06/2025.
//

import SwiftUI

struct TextInfoView: View {
    var text: String;
    
    
    var body: some View {
        Text(text)
            .font(.system(size: 25))
            .bold()
            .foregroundColor(.white)
    }
}

#Preview {
    TextInfoView(text: "Hola")
}
