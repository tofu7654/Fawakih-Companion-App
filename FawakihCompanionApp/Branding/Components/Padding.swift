//
//  Padding.swift
//  FawakihCompanionApp
//
//  Created by Shifath Khan on 4/23/25.
//

import SwiftUI

struct Padding: RawRepresentable {
    public var rawValue: CGFloat
    
    public init(rawValue: CGFloat) {
        self.rawValue = rawValue
    }
    
    // MARK: Padding Values
    public static var zero: Padding { .init(rawValue: 0) }
    public static var small: Padding { .init(rawValue: 4) }
    public static var standard: Padding { .init(rawValue: 8) }
    public static var large: Padding { .init(rawValue: 16) }
}
