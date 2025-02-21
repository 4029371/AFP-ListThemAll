//
//  ContentView.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

struct PlacesIveBeenView: View {
    
    @State var placesVisited = [
        "Australia",
        "Singapore",
        "Cambodia",
        "Japan",
        "China",
        "Thailand",
        "Malaysia",
        "America",
        "Germany",
        "France",
        "UK",
        "Italy",
        "South Korea",
        "Spain",
        "Canada",
        "Mexico",
        "New Zealand",
        "Indonesia",
        "Brazil",
        "Russia",
        "Ukraine",
    ]
    @State var selectedPlace = ""
    @State var newPlace: String = ""
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(placesVisited.sorted(), id: \.self) { place in
                    NavigationLink(place) {
                        NewScreen(place: $newPlace)
                    }
                }
            }
            .navigationTitle("Place I've visited")
        }
    }
}

#Preview {
    PlacesIveBeenView()
}
