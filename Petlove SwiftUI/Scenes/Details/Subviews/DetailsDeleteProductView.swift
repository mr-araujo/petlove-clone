//
//  DetailsDeleteProductView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 19/10/22.
//

import SwiftUI

struct DetailsDeleteProductView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Excluir produto")
                    .designSystemFont(.extraSmallTitle, .medium)
                    .foregroundColor(.neutralMain)

                Spacer()


                Button {
                    dismiss()
                } label: {
                    Image(systemName: "multiply.circle")
                        .designSystemFont(.smallTitle)
                        .foregroundColor(.primaryMain)
                }
            }.padding()

            DSThumbnailView(image: "True", quantity: 99, size: .large, border: .outline)

            Text("Deseja excluir apenas da compra de 14/03/21 ou de todas as compras?")
                .designSystemFont(.body, .regular)
                .multilineTextAlignment(.center)
                .foregroundColor(.neutralMain)
                .padding()

            Divider()
                .overlay(Color.neutralLight)
                .padding(.vertical)

            HStack(spacing: 16) {
                Button("Excluir de todas") {

                }.buttonStyle(Secondary(.medium))

                Button("Excluir desta compra") {

                }.buttonStyle(Primary(.medium))
            }.padding(.horizontal)
        }
    }
}

struct DetailsDeleteProductView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsDeleteProductView()
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 350))
    }
}
