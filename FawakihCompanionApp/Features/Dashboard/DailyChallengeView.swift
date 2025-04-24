//
//  DailyChallengeView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct DailyChallengeView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: Padding.large.rawValue) {
                HStack {
                    ZStack {
                        Circle()
                            .fill(.mintAccent)
                            .frame(width: 48, height: 48)
                        
                        Image(systemName: "trophy")
                            .renderingMode(.template)
                            .resizable()
                            .foregroundStyle(.mint)
                            .frame(width: 24, height: 24)
                    }
                    
                    Text("Daily Challenge")
                        .apply(BrandedStyle.Text.title)
                    
                    Spacer()
                }
                
                Text("Learn 5 new vocabulary words")
                    .apply(BrandedStyle.Text.titleSecondary)
                
                Button(action: {
                    // TODO: Navigate to 'Daily Challenge'
                }) {
                    Text("Start Now")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.vertical, .standard)
                        .padding(.horizontal, .large)
                        .background(.mintPrimary)
                        .cornerRadius(8)
                }
            }
            
            Spacer()
        }
        .padding(.all, .large)
        .apply(BrandedStyle.AnyView.elevated)
    }
}
