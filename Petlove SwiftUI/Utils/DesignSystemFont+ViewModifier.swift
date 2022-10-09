//
//  DesignSystemFont+ViewModifier.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 07/10/22.
//

import SwiftUI

enum FontWeight: String {
    /// Font weight: 100
    case thin = "Roboto-Thin"
    /// Font weight: 300
    case light = "Roboto-Light"
    /// Font weight: 400
    case regular = "Roboto-Regular"
    /// Font weight: 500
    case medium = "Roboto-Medium"
    /// Font weight: 700
    case bold = "Roboto-Bold"
    /// Font weight: 900
    case black = "Roboto-Black"
}

enum FontSize: CGFloat {
    /// Font size: 12
    case extraSmallBody = 12
    /// Font size: 14
    case smallBody = 14
    /// Font size: 16
    case body = 16
    /// Font size: 20
    case extraSmallTitle = 20
    /// Font size: 24
    case smallTitle = 24
    /// Font size: 32
    case mediumTitle = 32
    /// Font size: 40
    case largeTitle = 40
    /// Font size: 48
    case extraLargeTitle = 48
}

struct DesignSystemFont: ViewModifier {
    var weight: FontWeight
    var size: FontSize

    init(_ size: FontSize, _ weight: FontWeight) {
        self.weight = weight
        self.size = size
    }

    func body(content: Content) -> some View {
        content
            .font(.custom(weight.rawValue, size: size.rawValue))
    }
}

extension View {
    func designSystemFont(_ size: FontSize = .body, _ weight: FontWeight = .regular) -> some View {
        modifier(DesignSystemFont(size, weight))
    }
}
