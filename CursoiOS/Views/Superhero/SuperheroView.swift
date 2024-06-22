//
//  SuperheroView.swift
//  CursoiOS
//
//  Created by Bruno  on 20/06/24.
//

import SwiftUI

struct SuperheroView: View {
    @State var superName: String = ""
    @State var wrapper: SuperheroApi.Wrapper? = nil
    @State var loading: Bool = false
    
    var body: some View {
        VStack {
            TextField(
                "",
                text: $superName,
                prompt: Text("Search...")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.gray))
            .font(.title2)
            .bold()
            .foregroundStyle(.white)
            .padding(16)
            .border(.purple, width: 2)
            .padding(15)
            .autocorrectionDisabled()
            .onSubmit {
                loading = true
                Task {
                    do {
                        wrapper = try await SuperheroApi().getHeroesByQuery(query: superName)
                    } catch {
                        print("Error")
                    }
                    loading = false
                }
            }
            if loading == true {
                ProgressView().tint(.white)
            }
            NavigationStack {
                List(wrapper?.results ?? []) { superhero in
                    ZStack {
                        SuperheroItem(superhero: superhero)
                        NavigationLink(destination: SuperheroDetailView(id: superhero.id)) {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                    .listRowBackground(Color.backgroundApp)
                }
                .listStyle(.plain)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    SuperheroView()
}
