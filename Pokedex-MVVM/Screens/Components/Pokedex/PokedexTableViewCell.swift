//
//  PokedexTableViewCell.swift
//  Pokedex-MVVM
//
//  Created by Bruno Marques on 22/01/23.
//

import Foundation
import UIKit


class PokedexTableViewCell: UITableViewCell {
    static let identifier = "pokedexTableViewCellIdentifier"
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        return stack
    }()
    
    lazy var pokemonNamesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pokemon name here!"
        return label
    }()
    
    lazy var pokemonImage: UIImageView = {
        let image = UIImage(named: "pokeball")
        
        let imageview = UIImageView(image: image)
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PokedexTableViewCell {
    private func addSubviews() {
        addSubview(stack)
        stack.addSubview(pokemonNamesLabel)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            pokemonNamesLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            pokemonNamesLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
