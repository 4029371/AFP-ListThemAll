//
//  NewScreen.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

struct NewScreen: View {
    @Binding var place: String
    var body: some View {
        Text("Hello, World! \(place)")
    }
}

#Preview {
//    NewScreen(place: $selectedPlace)
}
