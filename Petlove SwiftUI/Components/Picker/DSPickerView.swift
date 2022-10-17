//
//  DSPickerView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 17/10/22.
//

import SwiftUI

struct DSPickerView: View {
    @State private var selected = "4x R$ 75,00"
    let installments = ["1x R$ 300,00", "2x R$ 150,00", "3x R$ 100,00", "4x R$ 75,00"]

    var body: some View {
        Menu {
            Picker("", selection: $selected) {
                ForEach(installments, id: \.self) { option in
                    Text(option)
                        .designSystemFont(.body, .regular)
                        .foregroundColor(.red)
                }
            }
        } label: {
            HStack {
                VStack(alignment: .leading) {
                    Text("Parcelas")
                        .designSystemFont(.extraSmallBody, .medium)
                        .foregroundColor(.neutralMain)

                    Text(selected)
                        .designSystemFont(.body, .regular)
                        .foregroundColor(.neutralDarkest)
                }

                Spacer()

                Image(systemName: "chevron.down")
                    .designSystemFont(.smallTitle)
                    .foregroundColor(.primaryMain)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.neutralLight)
            )
        }.padding(.horizontal)
    }
}

struct DSPicker_Previews: PreviewProvider {
    static var previews: some View {
        DSPickerView()
    }
}
