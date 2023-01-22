//
//  Pokemon.swift
//  Pokedex-MVVM
//
//  Created by Bruno Marques on 22/01/23.
//

import Foundation

struct Pokemon: Decodable {
    let results: [Results]
}

struct Results: Decodable {
    var name: String
}
