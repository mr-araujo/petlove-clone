//
//  DetailsAddressCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 14/10/22.
//

import SwiftUI

struct DetailsAddressCardView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "giftcard")
                    .designSystemFont(.smallTitle)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding([.top, .horizontal])

            HStack {
                Text("Endereço de entrega")
                    .designSystemFont(.extraSmallTitle, .bold)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding(.horizontal)

            HStack {
                Text("Rua do Reino, 40 - São Paulo")
                    .designSystemFont(.body, .medium)
                    .foregroundColor(.neutralMain)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding(.horizontal)

            DSFooterCardView("Alterar endereço", destination: AnyView(Text("Hello World!")))
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}

struct DetailsAddressCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsAddressCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 230))
    }
}
