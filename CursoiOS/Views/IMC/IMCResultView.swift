//
//  IMCResultView.swift
//  CursoiOS
//
//  Created by Bruno  on 19/06/24.
//

import SwiftUI

struct IMCResultView: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        VStack {
            Text("Resultado")
                .font(.title)
                .bold()
                .foregroundStyle(.white)
            
            let result = calculateImc(weight: userWeight, height: userHeight)
            InfoView(result: result)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

func calculateImc(weight: Double, height: Double) -> Double {
    let result = weight / ((height/100)*(height/100))
    return result
}

struct InfoView: View {
    let result: Double
    
    var body: some View {
        let information = getIMCResult(result: result)
        
        Text("\(result, specifier: "%.2f")")
            .font(.system(size: 60))
            .bold()
            .foregroundStyle(.white)
        Text(information.0)
            .foregroundStyle(information.2)
            .font(.title)
            .bold()
            .padding()
        
        Text(information.1)
            .foregroundStyle(.white)
            .font(.subheadline)
            .padding(.horizontal, 10)
    }
}

func getIMCResult(result: Double) -> (String, String, Color) {
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
        description = "Estás muy por encima del peso recomendado según el IMC."
        color = .red
    default:
        title = "ERROR"
        description = "Ha ocurrido un error"
        color = Color.gray
    }
    
    return (title, description, color)
}

#Preview {
    IMCResultView(userWeight: 80, userHeight: 190)
}
