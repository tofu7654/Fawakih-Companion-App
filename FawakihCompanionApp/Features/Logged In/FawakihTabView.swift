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

            FawakihDashboardView()
                .tabItem {
                    Label("Discover", systemImage: "magnifyingglass")
                }
            
            FawakihDashboardView()
                .tabItem {
                    Label("Create", systemImage: "plus.rectangle.fill")
                }
            
            FawakihDashboardView()
                .tabItem {
                    Label("Services", systemImage: "cube.fill")
                }
            
            FawakihDashboardView()
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
