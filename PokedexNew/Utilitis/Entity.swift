//
//  Entity.swift
//  PokedexNew
//
//  Created by Administrator on 10/06/23.
//

import Foundation

struct Resultados: Codable {
    let results: [Result]?
}

struct Result: Codable, Identifiable {
    let attack, defense: Int
    let description: String
    let height, id: Int
    let imageURL: String
    let name, type: String
    let weight: Int

    enum CodingKeys: String, CodingKey {
        case attack, defense, description, height, id
        case imageURL = "imageUrl"
        case name, type, weight
    }
}

// MARK: - EvolutionChain

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let attack: Int
    let name: String
    let imageUrl: String
    let defense: Int
    let description: String
    let type: String
    
}
