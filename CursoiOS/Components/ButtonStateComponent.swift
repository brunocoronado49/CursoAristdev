//
//  ButtonStateComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct ButtonStateComponent: View {
    @State var users: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                users += 1
            }, label: {
                Text("Users: \(users)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 60)
                    .background(.orange)
                    .cornerRadius(15)
            })
        }
    }
}

#Preview {
    ButtonStateComponent()
}
