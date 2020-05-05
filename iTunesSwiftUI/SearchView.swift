//
//  SearchView.swift
//  iTunesSwiftUI
//
//  Created by Dimitri Bouniol Lambda on 5/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import SwiftUI

final class SearchBar: NSObject, UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.delegate = self
        // Update your view whenever the SwiftUI state changes!
    }
}

extension SearchBar: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("Searched for \(searchBar.text!)")
        searchBar.endEditing(false)
        
        guard let query = searchBar.text else { return }
        
        iTunesAPI.searchArtists(for: query) { result in
            do {
                let artists = try result.get()
                
                guard let artist = artists.first else {
                    print("No Artists Found")
                    return
                }
                
                print(artist)
                
            } catch {
                print(error)
            }
        }
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBar()
                .environment(\.colorScheme, .light)
            
            NavigationView {
                SearchBar()
            }.environment(\.colorScheme, .dark)
        }
    }
}
