//
//  ViewController.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 8/11/23.
//

import SwiftUI
struct ContentView: View {
    private var viewModel: viewModel = viewModel()
    
    var body: some View {
        VStack {
            Text("URLSession con Swift")
                .padding()
            Button("Crear peticion HTTP") {
                viewModel.executeAPI()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  
    static var preview: some View {
        ContentView()
    }
}
