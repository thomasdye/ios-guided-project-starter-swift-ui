//
//  ContentView.swift
//  iTunesSwiftUI
//
//  Created by Fernando Olivares on 28/03/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack() {
            Text(/*@START_MENU_TOKEN@*/"Search for artists with iTunes API"/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
            Text("Artist Name Is Reallllllllly Long Placeholder")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .padding(12)
            
            HStack {
                Text("Artist Genre:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                        
                Text("Artist Genre Placeholder")
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
//            ContentView()
//                .environment(\.colorScheme, .dark)
        }
    }
}
