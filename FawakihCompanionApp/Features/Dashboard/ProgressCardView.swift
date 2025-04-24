//
//  ProgressCardView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct ProgressCardView: View {
    @State private var dailyProgress: CGFloat = 0.4 // dummy 40% progress (20/50)
    private var progressBarHeight: CGFloat = 10
    
    var body: some View {
        VStack(alignment: .leading, spacing: Padding.large.rawValue) {
            Text("Your Progress")
                .apply(BrandedStyle.Text.title)
            
            Text("You've reviewed 20 words today")
                .apply(BrandedStyle.Text.titleSecondary)
            
            // Progress Bar
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: geometry.size.width, height: self.progressBarHeight)
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: geometry.size.width * dailyProgress, height: self.progressBarHeight)
                        .foregroundColor(.mintPrimary)
                }
            }
            .frame(height: 10)
            
            HStack {
                Text("20/50 daily goal")
                    .font(.footnote)
                    .foregroundColor(.textSecondary)
                
                Spacer()
                
                Text("40%")
                    .font(.footnote)
                    .foregroundColor(.mintPrimary)
            }
        }
        .padding(.all, .large)
        .apply(BrandedStyle.AnyView.elevated)
    }
}
