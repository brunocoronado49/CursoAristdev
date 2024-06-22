//
//  SuperheroApi.swift
//  CursoiOS
//
//  Created by Bruno  on 20/06/24.
//

import Foundation

class SuperheroApi {
    struct Wrapper: Codable {
        let response: String
        let results: [Hero]
    }
    
    struct Hero: Codable, Identifiable {
        let id: String
        let name: String
        let image: ImageHero
    }
    
    struct ImageHero: Codable {
        let url: String
    }
    
    struct HeroCompleted: Codable {
        let id: String
        let name: String
        let image: ImageHero
        let powerstats: PowerStats
        let biography: Biography
    }
    
    struct PowerStats: Codable {
        let intelligence: String
        let strenght: String
        let durability: String
        let power: String
        let combat: String
    }
    
    struct Biography: Codable {
        let alignment: String
        let publisher: String
        let fullName: String
        let aliases: [String]
        
        enum CodingKeys: String, CodingKey {
            case alignment = "alignment"
            case publisher = "publisher"
            case fullName = "full-name"
            case aliases = "aliases"
        }
    }
    
    func getHeroesByQuery(query: String) async throws -> Wrapper {
        let url = URL(string: "https://www.superheroapi.com/api.php/46ebfc2c563612002919157e60e03e34/search/\(query)")
        
        let (data, _) = try await URLSession.shared.data(from: url!)
        
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        
        return wrapper
    }
    
    func getHeroById(id: String) async throws -> HeroCompleted {
        let url = URL(string: "https://www.superheroapi.com/api.php/46ebfc2c563612002919157e60e03e34/search/\(id)")
        
        let (data, _) = try await URLSession.shared.data(from: url!)
        
        return try JSONDecoder().decode(HeroCompleted.self, from: data)
    }
}

/// Para que se puedan parsear, se usa Codable
