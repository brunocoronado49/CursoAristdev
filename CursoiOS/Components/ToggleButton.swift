//
//  ToggleButton.swift
//  CursoiOS
//
//  Created by Bruno  on 19/06/24.
//

import SwiftUI

struct ToggleButton: View {
    let text: String
    let imageName: String
    let gender: Int
    
    @Binding var selectedGender: Int
    
    var body: some View {
        let backColor = if gender == selectedGender {
            Color.backgroundSelected
        } else {
            Color.backgroundComponent
        }
        
        Button(action: {
            selectedGender = gender
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.white)
                
                InfoText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backColor)
        }
    }
}

struct InfoText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .foregroundStyle(.white)
    }
}

struct TitleText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.gray)
    }
}

struct CounterButton: View {
    let title: String
    @Binding var number: Double
    
    var body: some View {
        VStack {
            TitleText(text: title)
            InfoText(text: String(number))
            HStack {
                Button(action: {
                    if number <= 0 {
                        return
                    }
                    
                    number -= 1
                }) {
                    ZStack {
                        Circle()
                            .foregroundStyle(.white)
                            .frame(width: 50, height: 60)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.backgroundApp)
                            .frame(width: 23, height: 23)
                    }
                }
                Button(action: {
                    if number >= 110 {
                        return
                    }
                    
                    number += 1
                }) {
                    ZStack {
                        Circle()
                            .foregroundStyle(.white)
                            .frame(width: 50, height: 50)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundStyle(.backgroundApp)
                            .frame(width: 23, height: 23)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}
