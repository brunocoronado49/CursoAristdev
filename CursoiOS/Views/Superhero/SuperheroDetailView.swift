//
//  SuperheroDetailView.swift
//  CursoiOS
//
//  Created by Bruno  on 20/06/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct SuperheroDetailView: View {
    let id: String
    
    @State var hero: SuperheroApi.HeroCompleted? = nil
    @State var loading: Bool = true
    
    var body: some View {
        VStack {
            if loading {
                ProgressView().tint(.white)
            } else if let hero = hero {
                WebImage(url: URL(string: hero.image.url))
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                
                Text(hero.name)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                
                ForEach(hero.biography.aliases, id: \.self) { alie in
                    Text(alie)
                        .foregroundStyle(.gray)
                        .italic()
                }
                
                //Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .onAppear {
            Task {
                do {
                    hero = try await SuperheroApi().getHeroById(id: id)
                    print(hero!)
                    
                } catch {
                    hero = nil
                }
                loading = false
            }
        }
    }
}

#Preview {
    SuperheroDetailView(id: "1")
}
