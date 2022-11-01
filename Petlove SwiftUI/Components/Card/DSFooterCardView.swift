//
//  DSFooterCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 07/10/22.
//

import SwiftUI

struct DSFooterCardView: View {
    let title: String
    let destination: AnyView

    init(_ title: String, destination: AnyView) {
        self.title = title
        self.destination = destination
    }

    var body: some View {
        VStack {
            Divider()
                .overlay(Color.neutralLight)

            NavigationLink {
                destination
            } label: {
                HStack {
                    Text(title)
                        .designSystemFont(.body, .medium)
                        .foregroundColor(.primaryMain)

                    Spacer()

                    Image(systemName: "arrow.forward")
                        .foregroundColor(.primaryMain)
                }.padding(.top, 8)
            }
        }.padding([.bottom, .horizontal])
    }
}

struct FooterCardView_Previews: PreviewProvider {
    static var previews: some View {
        DSFooterCardView("Alterar Data", destination: AnyView(Text("Hello World!")))
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 80))
    }
}
