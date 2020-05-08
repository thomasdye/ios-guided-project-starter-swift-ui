//
//  SearchView.swift
//  iTunesSwiftUI
//
//  Created by Thomas Dye on 5/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import SwiftUI

// Access Control
//
// private - only accessible inside your class
// fileprivate - only accessible inside the same file
// internal - only accessible in the same module
// public - accessible everywhere in all modules
// open - accessible everywhere _and_ subclasses

// It cannot be subclassed
final class SearchView: NSObject, UIViewRepresentable {
    
    // Two way street betwween two variabls.
    @Binding var artistName: String
    @Binding var artistGenre: String
    
    init(artistNameBinding: Binding<String>, artistGenreBinding: Binding<String>) {
        _artistName = artistNameBinding
        _artistGenre = artistGenreBinding
    }
    
    // Tell the compiler what view we'll be using while being UIViewrepresentable.
    // Generics via AssociatedType
    typealias UIViewType = UISearchBar
    
    // Create UIView
    func makeUIView(context: Context) -> UISearchBar {
        
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.delegate = self
        return searchBar
        
    }
    
    // Update it every single time that SwiftUI updates it.
    func updateUIView(_ searchBar: UISearchBar, context: Context) {
        
        searchBar.delegate = self
        
    }
}

// In order to become a UISerachBarDelegate
// 1. Be a class
// 2. Be a final class
// 3. Inherit from NSObject
extension SearchView: UISearchBarDelegate {
    
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        // The user typed something and then pressed return
        guard let searchBarText = searchBar.text else { return }
        
        iTunesAPI.searchArtists(for: searchBarText) { result in
            switch result {
            case .success(let artists):
                
                guard let firstArtist = artists.first else { return }
                let artistName = firstArtist.artistName
                let artistGenre = firstArtist.primaryGenreName
                
                self.artistName = artistName
                self.artistGenre = artistGenre
                
                
            case .failure(let error):
                print(error)
            }
        }
        searchBar.endEditing(true)
    }
    
}
