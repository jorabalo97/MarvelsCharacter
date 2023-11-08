//
//  CharactersTableView.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 8/11/23.
//

import Foundation
class CharactersTableView: UITableView {
    var Character = [Character]()
    
    override func viewDidLoad(){
      super.viewDidLoad()
        
        character = [
            Character(name:"Iron-man", age: 35, image: UIImage(NAMED: "")!)
        ]
    }
}
