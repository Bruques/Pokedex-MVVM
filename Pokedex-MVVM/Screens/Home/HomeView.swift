//
//  HomeView.swift
//  Pokedex-MVVM
//
//  Created by Bruno Marques on 22/01/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    
    lazy var pokedexLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pokedex"
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var pokedexNamesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView {
    private func addSubviews() {
        addSubview(pokedexLabel)
        addSubview(pokedexNamesTableView)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            pokedexLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            pokedexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            pokedexNamesTableView.topAnchor.constraint(equalTo: pokedexLabel.bottomAnchor, constant: 32),
            pokedexNamesTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pokedexNamesTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            pokedexNamesTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 16)
        ])
        
    }
}
