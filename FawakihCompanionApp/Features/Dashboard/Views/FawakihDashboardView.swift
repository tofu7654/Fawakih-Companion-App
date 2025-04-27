//
//  FawakihDashboardView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct FawakihDashboardView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: self.$path) {
            ScrollView {
                self.contentView
            }
            .background(.mintBackground)
            .navigationTitle("Fawakih")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // TODO: eventually we want to make modifiers for custom nav bar button items
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // TODO: Action for profile button
                    }) {
                        Image(systemName: "person.circle")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .tint(.white)
        .onAppear {
            self.configureNavigationBar()
        }
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: Padding.large.rawValue) {
            VStack(alignment: .leading, spacing: Padding.small.rawValue) {
                Text("Welcome back, AyoAz!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.textPrimary)
                
                Text("Continue your Arabic journey.")
                    .font(.subheadline)
                    .foregroundColor(.textSecondary)
            }
            
            // Progress Card
            ProgressCardView()
            
            // Daily Challenge Card
            DailyChallengeView()
            
            // Feature Section Title
            Text("Continue Learning")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.textPrimary)
                .padding(.top, .standard)
            
            // Feature Cards
            self.featureCardsView
        }
        .padding(.all, .large)
    }
    
    private var featureCardsView: some View {
        // Feature Cards (2x2 Grid)
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: Padding.large.rawValue) {
            // Flashcards Feature Card
            FawakihDashboardCardView(
                icon: "character.square.ar",
                title: "Flashcards",
                subtitle: "50 cards",
                action: "Continue →",
                route: .flashcards
            )
            
            // Lesson Highlights Feature Card
            FawakihDashboardCardView(
                icon: "book",
                title: "Lesson Highlights",
                subtitle: "5 lessons",
                action: "View →",
                route: .lessons
            )
            
            // Quizzes Feature Card
            FawakihDashboardCardView(
                icon: "puzzlepiece.extension",
                title: "Quizzes & Games",
                subtitle: "3 quizzes",
                action: "Play →",
                route: .quizzes
            )
            
            // Reminders Feature Card
            FawakihDashboardCardView(
                icon: "bell",
                title: "Reminders",
                subtitle: "Daily at 9:00 AM",
                action: "Configure →",
                route: .reminders
            )
        }
        .navigationDestination(for: FeatureCardRoute.self) { route in
            self.destinationView(for: route)
        }
    }
    
    // MARK: Private Helpers
    
    private func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "mintPrimary")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UIBarButtonItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.clear], for: .normal)
    }
    
    @ViewBuilder
    private func destinationView(for route: FeatureCardRoute) -> some View {
        switch route {
        case .flashcards:
            Text("Flashcards Destination")
                .customNavigationBar(title: "Flashcards")
        case .lessons:
            Text("Lesson Highlights Destination")
        case .quizzes:
            Text("Quizzes & Games Destination")
        case .reminders:
            Text("Reminders Destination")
        }
    }
}
