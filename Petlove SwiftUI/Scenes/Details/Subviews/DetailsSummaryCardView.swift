//
//  DetailsSummaryCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

struct DetailsSummaryCardView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "calendar")
                    .designSystemFont(.smallTitle)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding([.top, .horizontal])

            HStack {
                Text("Data de Pagamento")
                    .designSystemFont(.extraSmallTitle, .bold)
                    .foregroundColor(.neutralDarkest)

                Spacer()
            }.padding([.horizontal, .bottom])

            HStack {
                Text("14 de Março")
                    .designSystemFont(.extraSmallTitle, .medium)
                    .foregroundColor(.neutralDarkest)

                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, 6)

            HStack {
                Text("Previsão de entrega:")
                    .designSystemFont(.body, .medium)
                    .foregroundColor(.neutralDark)

                Text("16 de Março")
                    .designSystemFont()
                    .foregroundColor(.neutralMain)

                Spacer()
            }.padding([.horizontal, .bottom])

            HStack {
                Text("Total desta compra")
                    .designSystemFont(.extraSmallBody)
                    .foregroundColor(.neutralMain)

                Spacer()

                Text("R$ 250,00")
                    .designSystemFont(.body, .bold)
                    .foregroundColor(.neutralDark)
            }
            .padding(.bottom, 8)
            .padding(.horizontal)

            DSFooterCardView("Alterar data") {}
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}

struct DetailsSummaryCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSummaryCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 300))
    }
}
