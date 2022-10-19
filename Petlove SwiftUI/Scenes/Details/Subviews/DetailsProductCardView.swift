//
//  DetailsProductCardView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 10/10/22.
//

import SwiftUI

struct DetailsProductCardView: View {
    @State private var isShowingSheet = false
    var body: some View {
        VStack {
            HStack(alignment: .top) {

                DSThumbnailView(image: "True", quantity: 9, size: .extraSmall)
                    .padding([.leading, .vertical])

                VStack {
                    HStack {
                        Text("Ração Úmida Whiskas Sachê Carne ao Molho para Gatos Filhotes")
                            .designSystemFont(.smallBody, .regular)
                            .foregroundColor(.neutralDark)
                            .minimumScaleFactor(0.9)

                        Spacer()
                    }

                    HStack {
                        Text("Pacote 10Kg")
                            .designSystemFont(.smallBody, .regular)
                            .foregroundColor(.neutralMain)

                        Spacer()
                    }
                }.padding(.vertical)

                VStack {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "trash")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.primaryMain)
                    }
                    .padding(8)
                    .sheet(isPresented: $isShowingSheet) {

                        DetailsDeleteProductView()
                            .presentationDetents([.height(330)])
                            .presentationDragIndicator(.visible)

                    }
                }.padding([.trailing, .vertical])
            }

            HStack {
                DSCounterView(count: 3)

                Spacer()

                VStack {
                    Text("R$ 153,89")
                        .designSystemFont(.extraSmallBody, .regular)
                        .foregroundColor(.neutral)
                        .strikethrough()

                    Text("R$ 100,90")
                        .designSystemFont(.smallBody, .bold)
                        .foregroundColor(.neutralDark)
                }
            }
            .padding(.bottom, 8)
            .padding(.horizontal)

            DSFooterCardView("Entrega a cada 2 meses") {}
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }
}

struct DetailsProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsProductCardView()
            .padding(.vertical)
            .background(Color.neutralBG)
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 240))
    }
}
