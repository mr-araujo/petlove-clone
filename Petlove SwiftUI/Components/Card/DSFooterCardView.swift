//
//  DSFooterCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 07/10/22.
//

import SwiftUI

struct DSFooterCardView: View {
    let title: String
    let action: (() -> Void)

    init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    var body: some View {
        VStack {
            Divider()
                .overlay(Color.neutralLight)

            HStack {
                Text(title)
                    .designSystemFont(.body, .medium)
                    .foregroundColor(.primaryMain)

                Spacer()

                Button {

                } label: {
                    Image(systemName: "arrow.forward")
                        .foregroundColor(.primaryMain)
                }
            }.padding(.top, 8)
        }.padding([.bottom, .horizontal])
    }
}

struct FooterCardView_Previews: PreviewProvider {
    static var previews: some View {
        DSFooterCardView("Alterar Data") {}
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 80))
    }
}
