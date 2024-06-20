//
//  ButtonComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct ButtonComponent: View {
    var body: some View {
        VStack {
            Button("Hola") {
                print("Holiwis")
            }
            
            Button(action: {
                print("Holiwis2")
            }, label: {
                Text("Hola")
                    .frame(width: 100, height: 50)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .bold()
                    .cornerRadius(10)
            })
        }
    }
}

#Preview {
    ButtonComponent()
}
