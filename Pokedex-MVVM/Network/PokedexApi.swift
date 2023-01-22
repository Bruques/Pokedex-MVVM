//
//  PokedexApi.swift
//  Pokedex-MVVM
//
//  Created by Bruno Marques on 22/01/23.
//

import Foundation

class PokedexApi {
    let basePath = "https://pokeapi.co/api/v2/pokemon"
    
    func fetchPokemons(completion: @escaping (Pokemon) -> Void) {
        guard let url = URL(string: basePath) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            if response == nil {
                print("No reponse")
                return
            }
            
            guard let safeData = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let pokemon = try decoder.decode(Pokemon.self, from: safeData)
                completion(pokemon)
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}
