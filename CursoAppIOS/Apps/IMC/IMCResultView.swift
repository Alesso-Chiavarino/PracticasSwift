//
//  IMCResultView.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 05/06/2025.
//

import SwiftUI

struct IMCResultView: View {

    @Binding var weight: Int
    @Binding var height: Double

    func calculateIMC() -> Double {
        let result = Double(weight) / ((height / 100) * (height / 100))
        print("El resultado es: \(result)")
        return result
    }

    func getImcResult(result: Double) -> (String, String, Color) {
        let title: String
        let description: String
        let color: Color

        switch result {
        case 0.00...19.99:
            title = "Peso bajo"
            description = "Estás por debajo del peso recomendado según el IMC."
            color = .yellow
        case 20.00...24.99:
            title = "Peso Normal"
            description = "Estás en el peso recomendado según el IMC."
            color = .green
        case 25.00...29.99:
            title = "Sobrepeso"
            description = "Estás por encima del peso recomendado según el IMC."
            color = .orange
        case 30.00...100:
            title = "Obesidad"
            description =
                "Estás muy por encima del peso recomendado según el IMC."
            color = .red
        default:
            title = "ERROR"
            description = "Ha ocurrido un error"
            color = Color.gray
        }

        return (title, description, color)
    }

    var body: some View {

        let result: Double = calculateIMC()
        let resultInfo = getImcResult(result: result)
        VStack {
            VStack {
                Spacer()
                Text(resultInfo.0).foregroundColor(resultInfo.2).font(.title)
                    .bold()
                Spacer()
                Text("\(result, specifier: "%.2f")").font(.system(size: 80))
                    .bold().foregroundColor(.white)
                Spacer()
                Text(resultInfo.1).foregroundColor(.white).font(.title2)
                    .padding(.horizontal, 8)
                Spacer()

            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(
                .buttonBackground
            ).cornerRadius(16).padding(16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).background(
            .backgroundApp
        )

    }
}
