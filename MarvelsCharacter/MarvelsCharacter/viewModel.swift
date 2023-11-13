//
//  viewModel.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 13/11/23.
//

import Foundation
 
final class viewModel {
    func executeAPI() {
        let urlSession = URLSession.shared
        let url = URL(string: "http(s)://gateway.marvel.com/")
        
        urlSession.dataTask(with: url!) { data, response, error in
            print("¡Data\(String(describing: data))" )
            print(" Response \(String(describing: data)) ")
            print("Error \(String(describing: data))")
        }.resume()
    }
}
