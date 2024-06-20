//
//  TextFieldComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 18/06/24.
//

import SwiftUI

struct TextFieldComponent: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("old value: \(oldValue) - new value: \(newValue)")
            }
            
            SecureField("Password", text: $password)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("old value: \(oldValue) - new value: \(newValue)")
            }
        }
    }
}

#Preview {
    TextFieldComponent()
}
