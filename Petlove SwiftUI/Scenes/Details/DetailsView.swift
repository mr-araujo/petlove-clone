//
//  DetailsView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.dismiss) private var dismiss
    
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
                        DetailsPaymentCardView()
                    }
                }.padding(.top)
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
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.neutralDarkest)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {

                } label: {
                    Image(systemName: "questionmark.bubble")
                        .foregroundColor(.neutralDarkest)
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
