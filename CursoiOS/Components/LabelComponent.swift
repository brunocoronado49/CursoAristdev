//
//  LabelComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct LabelComponent: View {
    var body: some View {
        Label("Suscribete", systemImage: "swift")
        Label(title: {
            Text("Suscribete")
        }, icon: {
            Image("yor")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
        })
    }
}

#Preview {
    LabelComponent()
}
