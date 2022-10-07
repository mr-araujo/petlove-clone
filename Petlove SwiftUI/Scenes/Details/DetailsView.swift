//
//  DetailsView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack {
            Color.neutralBG
                .edgesIgnoringSafeArea([.top, .horizontal])

            ScrollView {
                DetailsSummaryCardView()
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
