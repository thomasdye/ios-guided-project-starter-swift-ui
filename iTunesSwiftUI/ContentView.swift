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
            Text("Artist Name Is Really  Long Placeholder")
                .font(.largeTitle)
                .lineLimit(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
