//
//  ViewController.swift
//  Pokedex-MVVM
//
//  Created by Bruno Marques on 22/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    lazy var homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = homeView
    }


}

extension HomeViewController {
    private func configureTableView() {
        homeView.pokedexNamesTableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
