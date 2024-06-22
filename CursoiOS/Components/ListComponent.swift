//
//  ListComponent.swift
//  CursoiOS
//
//  Created by Bruno  on 20/06/24.
//

import SwiftUI

var pokemons = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charmander"),
    Pokemon(name: "Charizard"),
    Pokemon(name: "Charmilion"),
    Pokemon(name: "Squirtle")
]

var digimons = [
    Digimon(name: "Doreimon"),
    Digimon(name: "Leonelmon"),
    Digimon(name: "Charmon"),
    Digimon(name: "Aguramon"),
    Digimon(name: "Brunomon")
]

struct ListComponent: View {
    var body: some View {
        List {
            Section(content: {
                ForEach(pokemons) { pokemon in
                    Text(pokemon.name)
                }
            }, header: {
                Text("Pokemons")
            })
            
            Section(content: {
                ForEach(digimons, id: \.name) { digimon in
                    Text(digimon.name)
                }
            }, header: {
                Text("Pokemons")
            })
        }
        .listStyle(.automatic)
    }
}

struct Pokemon: Identifiable {
    let id = UUID()
    let name: String
}

struct Digimon {
    let name: String
}

#Preview {
    ListComponent()
}
