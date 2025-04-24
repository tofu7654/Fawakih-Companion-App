//
//  FawakihTabView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct FawakihTabView: View {
    var body: some View {
        TabView {
            FawakihDashboardView()
                .tabItem {
                    Label("Flashcards", systemImage: "rectangle")
                }

            ContentView()
                .tabItem {
                    Label("Discover", systemImage: "magnifyingglass")
                }
            
            ContentView()
                .tabItem {
                    Label("Create", systemImage: "plus.rectangle.fill")
                }
            
            ContentView()
                .tabItem {
                    Label("Services", systemImage: "cube.fill")
                }
            
            ContentView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(Color.mint)
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        FawakihTabView()
    }
}
