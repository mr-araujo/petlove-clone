//
//  HomeNextDeliveryCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 01/11/22.
//

import SwiftUI

struct HomeNextDeliveryCardView: View {
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
                Text("Próxima compra")
                    .designSystemFont(.extraSmallTitle, .bold)
                    .foregroundColor(.neutralDark)

                Spacer()
            }.padding([.horizontal, .bottom])

            HStack {
                Text("25 de Outubro de 2022")
                    .designSystemFont(.extraSmallTitle, .medium)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, 6)

            HStack {
                Text("Previsão de entrega:")
                    .designSystemFont(.body, .medium)
                    .foregroundColor(.neutralDark)

                Text("16 de Março")
                    .designSystemFont(.body, .regular)
                    .foregroundColor(.neutralMain)

                Spacer()
            }.padding([.horizontal, .bottom])

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<5) { _ in
                        DSThumbnailView(image: "True", quantity: 9, size: .medium, border: .outline)
                    }
                }
            }.padding([.horizontal, .bottom])

            HStack {
                Text("Total desta compra")
                    .designSystemFont(.extraSmallBody, .regular)
                    .foregroundColor(.neutralMain)

                Spacer()

                Text("R$ 300,00")
                    .designSystemFont(.body, .bold)
                    .foregroundColor(.neutralDark)
            }
            .padding(.bottom, 8)
            .padding(.horizontal)

            DSFooterCardView("Alterar compra", destination: AnyView(DetailsView()))
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)

    }
}

struct HomeNextDeliveryCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNextDeliveryCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 420))
    }
}
