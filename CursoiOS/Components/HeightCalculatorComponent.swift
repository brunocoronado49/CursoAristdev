//
//  HeightCalculator.swift
//  CursoiOS
//
//  Created by Bruno  on 19/06/24.
//

import SwiftUI

struct HeightCalculatorComponent: View {
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InfoText(text:" \(Int(selectedHeight)) cm")
            
            Slider(value: $selectedHeight, in: 50...200, step: 1)
                .accentColor(.white)
                .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}
