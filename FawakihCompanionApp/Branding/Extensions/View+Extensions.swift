//
//  View+Extensions.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

extension View {
    func apply<T: View>(_ transform: (Self) -> T) -> T {
        transform(self)
    }
}

extension View {
    func padding(_ edges: Edge.Set, _ padding: Padding) -> some View {
        self.padding(edges, padding.rawValue)
    }
}
