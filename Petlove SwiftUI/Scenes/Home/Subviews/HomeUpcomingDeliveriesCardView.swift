//
//  HomeUpcomingDeliveriesCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 01/11/22.
//

import SwiftUI

struct HomeUpcomingDeliveriesCardView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Próximas compras")
                    .designSystemFont(.smallBody, .bold)
                    .foregroundColor(.neutralDark)

                Spacer()
            }
            .padding([.top, .horizontal])
            .padding(.bottom, 8)

            ForEach((1...2), id: \.self) { _ in
                HomeDeliveryView()
            }
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}

struct HomeUpcomingDeliveriesCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUpcomingDeliveriesCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 450))
    }
}
