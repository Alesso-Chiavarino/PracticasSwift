//
//  TextExample.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 29/05/2025.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {

        }
        Text("todo bien?")
            .font(.system(size: 20, weight: .bold))
            .italic()
            .underline()
            .foregroundColor(.red)
            .background(.orange)
            .padding(20)

    }
}

#Preview {
    TextExample()
}
