//
//  HomeDeliveryView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 01/11/22.
//

import SwiftUI

struct HomeDeliveryView: View {
    var body: some View {
        VStack {
            Divider()
                .overlay(Color.neutralLight)
                .padding(.bottom, 8)

            NavigationLink {
                Text("Hello World!")
            } label: {
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("10 de Dezembro")
                            .designSystemFont(.smallBody, .bold)
                            .foregroundColor(.neutralDark)

                        Text("Previsão de entrega: 05/12")
                            .designSystemFont(.smallBody, .regular)
                            .foregroundColor(.neutralMain)
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .font(.system(size: 24))
                        .foregroundColor(.primaryMain)
                }
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<5) { _ in
                        DSThumbnailView(image: "True", quantity: 9, size: .medium, border: .outline)
                    }
                }
            }.padding(.top)
        }
        .padding(.horizontal)
    }
}

struct HomeDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDeliveryView()
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 200))
    }
}
