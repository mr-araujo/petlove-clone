//
//  ContentView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 30/09/22.
//

import SwiftUI

struct HomeView: View {

    @State var paths: [NavigationPath] = []
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.neutralBG.edgesIgnoringSafeArea([.horizontal, .top])
                Button("Detalhes") {
                    paths.append(.details)
                }
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
                        Image(systemName: "questionmark.square")
                            .foregroundColor(.neutralDarkest)
                    }
                }
            }
            .navigationDestination(for: NavigationPath.self) { view in
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

enum NavigationPath: String, Hashable {
    case details = "Details View"
}
