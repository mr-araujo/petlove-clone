//
//  DSCounterView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 12/10/22.
//

import SwiftUI

struct DSCounterView: View {
    @State var count: Int

    var body: some View {
        HStack(spacing: 12) {
            Button {
                if count > 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
                    .frame(width: 16, height: 16)
                    .foregroundColor(.primaryMain)
            }

            Text("\(count)")
                .designSystemFont(.body, .medium)
                .foregroundColor(.neutralDark)
                .frame(width: 30)

            Button {
                if count < 999 {
                    count += 1
                }
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.primaryMain)
            }
        }
        .padding(12)
        .background(Color.neutralLightest)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .frame(width: 112)
    }
}

struct DSCounterView_Previews: PreviewProvider {
    static var previews: some View {
        DSCounterView(count: 15)
            .previewLayout(.fixed(width: 120, height: 50))
    }
}
