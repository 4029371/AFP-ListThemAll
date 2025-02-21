//
//  AFP_ListThemAllApp.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

@main
struct AFP_ListThemAllApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab {
                    PlacesIveBeenView()
                } label: {
                    Image(systemName: "globe")
                    Text("My Travel")
                }
                Tab {
                    StudentList()
                } label: {
                    Image(systemName: "person.3")
                    Text("Student List")
                }
                Tab {
                    LoginView()
                } label: {
                    Image(systemName: "lock.fill")
                    Text("Own Struct")
                }
            }
        }
    }
}

