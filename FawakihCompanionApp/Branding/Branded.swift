//
//  Branded.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

enum BrandedStyle {}

// View extensions
extension BrandedStyle {
    enum AnyView {
        static func elevated<V: View>(_ view: V) -> some View {
            view
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                )
        }
    }
}

// Image extensions
extension BrandedStyle {
    enum Image {
        static func standard(_ image: SwiftUI.Image) -> some View {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
        }
    }
}

// Text extensions
extension BrandedStyle {
    enum Text {
        static func primary(_ text: SwiftUI.Text) -> some View {
            text
                .font(.body)
                .fontWeight(.medium)
        }
        
        static func title(_ text: SwiftUI.Text) -> some View {
            text
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.textPrimary)
        }
        
        static func titleSecondary(_ text: SwiftUI.Text) -> some View {
            text
                .font(.subheadline)
                .foregroundColor(.textSecondary)
        }
    }
}
