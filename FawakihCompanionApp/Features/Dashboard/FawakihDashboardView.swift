//
//  FawakihDashboardView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct FawakihDashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView {
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
                    
                    // Feature Cards (2x2 Grid)
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: Padding.large.rawValue) {
                        // Flashcards Feature Card
                        FawakihDashboardCardView(
                            icon: "character.square.ar",
                            title: "Flashcards",
                            subtitle: "50 cards",
                            action: "Continue →"
                        )
                        
                        // Lesson Highlights Feature Card
                        FawakihDashboardCardView(
                            icon: "book",
                            title: "Lesson Highlights",
                            subtitle: "5 lessons",
                            action: "View →"
                        )
                        
                        // Quizzes Feature Card
                        FawakihDashboardCardView(
                            icon: "puzzlepiece.extension",
                            title: "Quizzes & Games",
                            subtitle: "3 quizzes",
                            action: "Play →"
                        )
                        
                        // Reminders Feature Card
                        FawakihDashboardCardView(
                            icon: "bell",
                            title: "Reminders",
                            subtitle: "Daily at 9:00 AM",
                            action: "Configure →"
                        )
                    }
                }
                .padding(.all, .large)
            }
            .background(.mintBackground)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Fawakih")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
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
            .toolbarBackground(
                LinearGradient(
                    gradient: Gradient(colors: [.mintPrimary]),
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                for: .navigationBar
            )
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}
