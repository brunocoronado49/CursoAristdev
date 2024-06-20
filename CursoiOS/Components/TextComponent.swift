//
//  TextComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.headline)
            
            Text("Custom")
                .font(.system(
                    size: 40,
                    weight: .light,
                    design: .monospaced
                ))
                .italic()
                .bold()
                .underline()
                .foregroundStyle(.blue)
                .background(.red)
            
            Text("Franco Franco Franco Franco")
                .frame(width: 70)
                .lineLimit(3)
                .lineSpacing(12)
        }
    }
}

#Preview {
    TextComponent()
}
