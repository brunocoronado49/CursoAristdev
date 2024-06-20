//
//  ImageComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct ImageComponent: View {
    var body: some View {
        VStack {
            Image("yor")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 350)
                .foregroundStyle(.blue)
            
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    ImageComponent()
}
