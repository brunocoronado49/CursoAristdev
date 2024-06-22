//
//  SuperheroItem.swift
//  CursoiOS
//
//  Created by Bruno  on 20/06/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct SuperheroItem: View {
    let superhero: SuperheroApi.Hero
    
    var body: some View {
        ZStack {
            WebImage(url: URL(string: superhero.image.url))
                .resizable()
                .indicator(.activity)
                .scaledToFill()
                .frame(height: 200)
            
            VStack {
                Spacer()
                Text(superhero.name)
                    .foregroundStyle(.white)
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.5))
            }
        }
        .frame(height: 200)
        .cornerRadius(16)
    }
}
