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
                .bold()
                .multilineTextAlignment(.center)
                .lineLimit(3)
            
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
