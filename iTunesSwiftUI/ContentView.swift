//
//  ContentView.swift
//  iTunesSwiftUI
//
//  Created by Fernando Olivares on 28/03/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var artistName = "Artist Name Is Reallllllllly Long Placeholder"
    var artistGenre = "Artist Genre Placeholder"
    
    var body: some View {
        VStack() {
            Text("Search for artists with iTunes API")
                .font(.subheadline)
//            TextField("Artist Name", text: artistName)
//            TextField("Artist Genre", text: artistGenre)
            Text(artistName)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .padding(12)
            
            HStack {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            
            NavigationView {
                ContentView()
            }.environment(\.colorScheme, .dark)
        }
    }
}
