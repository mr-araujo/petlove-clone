//
//  DSButton.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 09/10/22.
//

import SwiftUI

public enum ButtonSize {
    case small
    case medium
}

struct Primary: ButtonStyle {
    let size: ButtonSize

    init(_ size: ButtonSize) {
        self.size = size
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .designSystemFont(size == .medium ? .body : .smallBody, .medium)
            .frame(maxWidth: .infinity, minHeight: size == .medium ? 64 : 40)
            .background(Color.primaryMain)
            .clipShape(RoundedRectangle(cornerRadius: size == .medium ? 16 : 8))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct Secondary: ButtonStyle {
    let size: ButtonSize

    init(_ size: ButtonSize) {
        self.size = size
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal)
            .foregroundColor(.primaryMain)
            .multilineTextAlignment(.center)
            .designSystemFont(size == .medium ? .body : .smallBody, .medium)
            .frame(maxWidth: .infinity, minHeight: size == .medium ? 64 : 40)
            .background(Color.primaryLightest)
            .clipShape(RoundedRectangle(cornerRadius: size == .medium ? 16 : 8))
            .overlay(
                RoundedRectangle(cornerRadius: size == .medium ? 16 : 8)
                    .stroke(Color.primaryLight)
            )
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct DSButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Button("Primary Small") { }
            .buttonStyle(Primary(.small))
            .padding(.horizontal)

            Button("Secodary Small") { }
            .buttonStyle(Secondary(.small))
            .padding(.horizontal)

            HStack {
                Button("Primary Medium") { }
                .buttonStyle(Primary(.medium))

                Button("Secodary Medium") { }
                .buttonStyle(Secondary(.medium))
            }.padding([.top, .horizontal])
        }
        .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 250))
    }
}
