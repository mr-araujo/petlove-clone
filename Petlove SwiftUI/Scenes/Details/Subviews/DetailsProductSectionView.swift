//
//  DetailsProductSectionView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 09/10/22.
//

import SwiftUI

struct DetailsProductSectionView: View {
    var body: some View {
        VStack(spacing: 18) {
            HStack(spacing: 18) {
                Image(systemName: "shippingbox")
                    .designSystemFont(.smallTitle)
                    .foregroundColor(.neutralDark)

                Text("Produtos dessa compra")
                    .foregroundColor(.neutralDark)
                    .designSystemFont(.extraSmallTitle, .bold)

                Spacer()
            }

            Button("Adicionar mais produtos") {

            }.buttonStyle(Secondary(.small))
        }.padding(.horizontal)
    }
}

struct DetailsProductSectionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsProductSectionView()
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 150))
    }
}
