//
//  View+Modifiers.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/26/25.
//

import SwiftUI

extension View {
    func customNavigationBar(title: String?) -> some View {
        self.modifier(CustomNavigationBarModifier(title: title))
    }
}
