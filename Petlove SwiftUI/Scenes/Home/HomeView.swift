//
//  ContentView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

enum HomeRoute: String {
    case details
}

struct HomeView: View {
    @State var routes: [HomeRoute] = []

    var body: some View {
        NavigationStack(path: $routes) {
            ZStack {
                Color.neutralBG.edgesIgnoringSafeArea([.horizontal, .top])

                ScrollView {
                    VStack(spacing: 16) {
                        HomeNextDeliveryCardView()
                    }
                }.padding(.top)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Compra recorrente")
                        .foregroundColor(.neutralDark)
                        .font(.body)
                        .fontWeight(.bold)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {

                    } label: {
                        Image(systemName: "questionmark.bubble")
                            .foregroundColor(.neutralDarkest)
                    }
                }
            }
            .navigationDestination(for: HomeRoute.self) { view in
                switch view {
                case .details: DetailsView()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
