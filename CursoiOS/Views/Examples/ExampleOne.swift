//
//  ExampleOne.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct ExampleOne: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }
            .frame(height: 100)
            
            Rectangle()
                .frame(height: 100)
                .foregroundStyle(.orange)
            
            HStack {
                Circle()
                    .foregroundStyle(.green)
                Rectangle()
                Circle()
                    .foregroundStyle(.indigo)
            }
            .frame(height: 250)
            
            Rectangle()
                .frame(height: 100)
                .foregroundStyle(.orange)
            
            HStack {
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }
            .frame(height: 100)
        }
        .background(.red)
    }
}

#Preview {
    ExampleOne()
}
