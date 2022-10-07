//
//  DesignSystemFont+ViewModifier.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 07/10/22.
//

import SwiftUI

enum FontWeight: String {
    case thin = "Roboto-Thin"
    case light = "Roboto-Light"
    case regular = "Roboto-Regular"
    case medium = "Roboto-Medium"
    case bold = "Roboto-Bold"
    case black = "Roboto-Black"
}

enum FontSize: CGFloat {
    case extraSmallBody = 12
    case smallBody = 14
    case body = 16
    case extraSmallTitle = 20
    case smallTitle = 24
    case mediumTitle = 32
    case largeTitle = 40
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
