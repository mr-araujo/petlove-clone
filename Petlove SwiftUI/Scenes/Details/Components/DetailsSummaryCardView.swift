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
                    .foregroundColor(.neutralDark)

                Spacer()
            }.padding()

            HStack {
                Text("Data de Pagamento")
                    .font(.custom("", fixedSize: 20))
                    .foregroundColor(.neutralDarkest)
                    .fontWeight(.black)

                Spacer()
            }.padding([.horizontal, .bottom])

            HStack {
                Text("14 de Março")
                    .font(.custom("", fixedSize: 20))
                    .foregroundColor(.neutralDarkest)
                    .fontWeight(.bold)

                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, 6)

            HStack {
                Text("Previsão de entrega:")
                    .font(.custom("", fixedSize: 16))
                    .foregroundColor(.neutralDark)
                    .fontWeight(.bold)

                Text("16 de Março")
                    .font(.custom("", fixedSize: 16))
                    .foregroundColor(.neutralMain)
                    .fontWeight(.medium)

                Spacer()
            }.padding([.horizontal, .bottom])

            HStack {
                Text("Total desta compra")
                    .font(.custom("", fixedSize: 12))
                    .foregroundColor(.neutralMain)

                Spacer()

                Text("R$ 250,00")
                    .font(.custom("", fixedSize: 16))
                    .foregroundColor(.neutralDark)
                    .fontWeight(.black)
            }.padding([.horizontal, .bottom])
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding()
    }
}

struct DetailsSummaryCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSummaryCardView()
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 250))
    }
}
