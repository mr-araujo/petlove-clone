//
//  DSThumbnailView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 10/10/22.
//

import SwiftUI

struct Thumbnail {

    public enum Size {
        /// Thumbnail size: 48
        case extraSmall
        /// Thumbnail size: 56
        case small
        /// Thumbnail size: 56
        case medium
        /// Thumbnail size: 64
        case large
        /// Thumbnail size: 96
        case extraLarge
        /// Thumbnail size: 120
        case giant
    }

    public enum Border {
        case outline
        case none
    }
}

struct DSThumbnailView: View {
    let image: String
    let quantity: Int
    let size: Thumbnail.Size
    let border: Thumbnail.Border

    init(image: String, quantity: Int, size: Thumbnail.Size, border: Thumbnail.Border = .none) {
        self.image = image
        self.quantity = quantity
        self.size = size
        self.border = border
    }

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: getProperties().dimension, height: getProperties().dimension)

            HStack {
                VStack {
                    Spacer()

                    ZStack {
                        Circle()
                            .fill(Color.primaryMain)

                        Text("\(quantity)")
                            .padding(.horizontal, 2)
                            .designSystemFont(getProperties().font, .bold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.7)
                    }.frame(width: getProperties().dimension * 0.45, height: getProperties().dimension * 0.45)
                }
                Spacer ()
            }
        }
        .frame(width: getProperties().dimension, height: getProperties().dimension)
        .padding(border == .outline ? 12 : 0)
        .overlay(
            RoundedRectangle(cornerRadius: getProperties().border)
                .stroke(Color.neutralLightest, lineWidth: border == .outline ? 1 : 0)
        )
    }

    private func getProperties() -> (dimension: CGFloat, border: CGFloat, font: FontSize) {
        switch size {
        case .extraSmall:
            return (48, 8, .extraSmallBody)
        case .small:
            return (56, 8, .extraSmallBody)
        case .medium:
            return (64, 12, .smallBody)
        case .large:
            return (80, 12, .body)
        case .extraLarge:
            return (96, 16, .extraSmallTitle)
        case .giant:
            return (120, 16, .smallTitle)
        }
    }
}

struct DSThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        DSThumbnailView(image: "True", quantity: 99, size: .giant, border: .outline)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
