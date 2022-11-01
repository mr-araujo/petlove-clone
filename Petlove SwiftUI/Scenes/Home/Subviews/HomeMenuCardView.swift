//
//  HomeMenuCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 01/11/22.
//

import SwiftUI

struct HomeMenuCardView: View {
    let icon: String
    let title: String
    let destination: AnyView

    var body: some View {
        NavigationLink {
            destination
        } label: {
            VStack {
                HStack {
                    Image(systemName: icon)
                        .designSystemFont(.smallTitle)
                        .foregroundColor(.neutralMain)

                    Spacer()
                }
                .padding(.top, 20)
                .padding(.horizontal, 12)
                .padding(.bottom, 8)

                HStack {
                    Text(title)
                        .designSystemFont(.extraSmallBody, .bold)
                        .foregroundColor(.neutralMain)

                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.bottom, 20)

            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal)
        }
    }
}

struct HomeMenuCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMenuCardView(
            icon: "calendar",
            title: "Produtos recorrentes",
            destination: AnyView(Text("Hello World!"))
        )
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: 130, height: 150))
    }
}
