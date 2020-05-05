//
//  SearchView.swift
//  iTunesSwiftUI
//
//  Created by Dimitri Bouniol Lambda on 5/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        // Updateyour view whenever the SwiftUI state changes!
    }
}
