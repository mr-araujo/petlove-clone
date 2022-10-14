//
//  DetailsView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color.neutralBG
                    .edgesIgnoringSafeArea([.top, .horizontal])

                ScrollView {
                    VStack(spacing: 16) {
                        DetailsSummaryCardView()
                        DetailsProductSectionView()

                        ForEach((1...2), id: \.self) { _ in
                            DetailsProductCardView()
                        }

                        DetailsAddressCardView()
                    }
                }
            }

            HStack(spacing: 16) {
                Button("Pular compra") {

                }.buttonStyle(Secondary(.medium))

                Button("Antecipar compra") {

                }.buttonStyle(Primary(.medium))
            }
            .padding()
            .background(Color.neutralBG)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
