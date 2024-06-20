//
//  IMCView.swift
//  CursoiOS
//
//  Created by Bruno  on 19/06/24.
//

import SwiftUI

struct IMCView: View {
    @State var gender: Int = 0
    @State var height: Double = 150
    @State var age: Double = 10
    @State var weight: Double = 30.0
    
    var body: some View {
        VStack {
            HStack {
              ToggleButton(text: "Hombre", imageName: "star.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imageName: "heart.fill", gender: 1, selectedGender: $gender)
            }
            
            HeightCalculatorComponent(selectedHeight: $height)
            
            HStack {
                CounterButton(title: "Edad", number: $age)
                CounterButton(title: "Peso", number: $weight)
            }
            
            IMCCalculateButton(userWeight: weight, userHeight: height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator")
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
}

struct IMCCalculateButton: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: IMCResultView(userWeight: userWeight, userHeight: userHeight)) {
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}

#Preview {
    IMCView()
}
