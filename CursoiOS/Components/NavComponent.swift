//
//  NavComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 19/06/24.
//

import SwiftUI

struct NavComponent: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: IMCView()) {
                    Text("IMC Calculator")
                        .bold()
                        .foregroundStyle(.white)
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        .background(.cyan)
                        .cornerRadius(16)
                }
                
                Text("App 2")
                
                Text("App 3")
            }
        }
    }
}

#Preview {
    NavComponent()
}
