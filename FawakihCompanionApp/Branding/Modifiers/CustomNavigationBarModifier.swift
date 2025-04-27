//
//  CustomNavigationBarModifier.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/26/25.
//

import SwiftUI

struct CustomNavigationBarModifier: ViewModifier {
    let title: String?
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(self.title ?? "")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        self.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                    }
                }
            }
    }
}
