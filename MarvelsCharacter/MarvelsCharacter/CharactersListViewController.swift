//
//  ViewController.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 8/11/23.
//

import UIKit

struct Character {
    let name: String
    let description: String
    
}
class CharactersListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    var characters: [Character] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        fetchCharacterData()
    }
    func fetchCharacterData() {
        let url = URL(string: " https://")
    }
}
