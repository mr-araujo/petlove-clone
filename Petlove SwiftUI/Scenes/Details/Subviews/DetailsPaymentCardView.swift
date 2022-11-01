//
//  DetailsPaymentCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 14/10/22.
//

import SwiftUI

struct DetailsPaymentCardView: View {

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "creditcard")
                    .designSystemFont(.smallTitle)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding([.top, .horizontal])

            HStack {
                Text("Pagamento com cartão")
                    .designSystemFont(.extraSmallTitle, .bold)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding([.bottom, .horizontal])

            DSPickerView()

            HStack {
                Image(systemName: "creditcard.and.123")
                    .designSystemFont(.extraSmallTitle)
                    .foregroundColor(.neutralDark)

                Text("Mastercard - Final 3415")
                    .designSystemFont(.body, .medium)
                    .foregroundColor(.neutralMain)

                Spacer()
            }
            .padding(.bottom, 8)
            .padding([.top, .horizontal])

            DSFooterCardView("Alterar dados de pagamento", destination: AnyView(Text("Hello World!")))
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}

struct DetailsPaymentCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPaymentCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 300))
    }
}
