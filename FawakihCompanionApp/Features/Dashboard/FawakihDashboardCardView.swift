//
//  FawakihDashboardCardView.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct FawakihDashboardCardView: View {
    let icon: String
    let title: String
    let subtitle: String
    let action: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                // Icon Circle
                ZStack {
                    Circle()
                        .fill(.mintAccent)
                        .frame(width: 48, height: 48)
                    
                    Image(systemName: icon)
                        .renderingMode(.template)
                        .resizable()
                        .foregroundStyle(.mint)
                        .frame(width: 24, height: 24)
                }
                
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.textPrimary)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.textSecondary)
                
                Spacer()
                
                Text(action)
                    .font(.subheadline)
                    .foregroundColor(.mintPrimary)
            }
            Spacer()
        }
        .padding()
        .frame(height: 180)
        .apply(BrandedStyle.AnyView.elevated)
    }
}
