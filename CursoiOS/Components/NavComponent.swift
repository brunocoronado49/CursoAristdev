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
            List {
                NavigationLink(destination: IMCView()) {
                    Text("IMC Calculator")
                        .bold()
                }
                
                NavigationLink(destination: SuperheroView()) {
                    Text("Superheroes")
                        .bold()
                }
                
                Text("App 3")
            }
        }
        .navigationTitle("Applications")
    }
}

#Preview {
    NavComponent()
}
