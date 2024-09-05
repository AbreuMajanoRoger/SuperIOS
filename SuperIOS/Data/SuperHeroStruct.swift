//
//  SuperHeroStruct.swift
//  SuperIOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation


// Atributos de la api 

struct SuperHeroResponse: Codable {
    let response: String
    let results: [SuperHero]
}

struct SuperHero: Codable {
    let id: String
    let name: String
    let image: Image
}

struct Image: Codable {
    let url: String
}
