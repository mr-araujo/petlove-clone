//
//  DSThumbnailView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 10/10/22.
//

import SwiftUI

struct DSThumbnailView: View {
    let image: String
    let count: Int

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: 48, height: 48)

            HStack {
                VStack {
                    Spacer()

                    ZStack {
                      Circle()
                            .fill(Color.primaryMain)

                      Text("\(count)")
                            .padding(.horizontal, 2)
                            .designSystemFont(.extraSmallBody, .bold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.7)
                    }.frame(width: 20, height: 20)
                }
                Spacer ()
            }
        }
        .padding()
        .frame(width: 48, height: 48)
    }
}

struct DSThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        DSThumbnailView(image: "True", count: 9)
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
