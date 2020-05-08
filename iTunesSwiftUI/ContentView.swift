//
//  ContentView.swift
//  iTunesSwiftUI
//
//  Created by Fernando Olivares on 28/03/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import SwiftUI

// Struct that holds our view.
// Structures are value-based
// Classes are referenced based
//
// class UILabel -> instance
// let label = UILabel()
// label.placeholderText = ""
//
// struct (var) Text -> modifications -> Text
struct ContentView: View {
    
    // State is the source of truth.
    // If it changes, the whole view is going to be redraw.
    @State var artistName: String = ""
    @State var artistGenre: String = ""
    
    var body: some View {
        
        VStack() {
            
            Text("Search for artists in iTunes")
                .font(.subheadline)
            
            // TextField is expecting a binding.
            // A binding will help SwiftUI know that it needs to update one of our own custom variables.
            // In order for us to have a custom variable like that, we need to @State to wrap ot.
            SearchView(artistNameBinding: $artistName, artistGenreBinding: $artistGenre)
        
                    
            Text(artistName) // Create our first text.
                .font(.largeTitle) // Modify the text (-> a new text with the modications)
                .bold()
                .multilineTextAlignment(.center)
                .lineLimit(3)
            
            
            HStack() {
                Text("Artist Genre:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(artistGenre)
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            
            Spacer()
        }
    }
}


// Struct that holds our preivew.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
