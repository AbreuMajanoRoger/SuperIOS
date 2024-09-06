//
//  SuperHeroStruct.swift
//  SuperIOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation


// Atributos de la api estructura para traer los item de la api 

struct SuperHeroResponse: Codable {
    let response: String
    let results: [SuperHero]
}

struct SuperHero: Codable {
    let id: String
    let name: String
    let powerstats: Stats
    let biography:Biography
    //let work:Work
    var image: Image
}

struct Image: Codable {
    let url: String
}

struct Biography: Codable {
    let realName: String
    let placeOfBirth: String
    let publisher: String
    let alignment: String
    
    // Metodo para renombrar aquellos item que vienen de la api ejemplo  name-super = realName
    enum CodingKeys: String, CodingKey {
        case publisher, alignment
        case realName = "full-name"
        case placeOfBirth = "place-of-birth"
    }
}

struct Stats: Codable {
    let intelligence: String?
    let strength: String?
    let speed: String?
    let durability: String?
    let power: String?
    let combat: String?
}
