//
//  Person.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 8/11/23.
//

import Foundation
 
class Person {
    var name: String
    var age: Int
    var image: UIImage
    
    init(name: String, age: Int, image: UIImage) {
        self.name = name
        self.age = age
        self.image = image
    }
}
