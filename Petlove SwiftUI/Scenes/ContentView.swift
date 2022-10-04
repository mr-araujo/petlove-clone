//
//  ContentView.swift
//  Petlove SwiftUI
//
//  Created by Murillo R. Araújo on 04/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Color.neutralBG
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            HomeView()
                .tabItem {
                    Label("Recorrências", systemImage: "arrow.2.circlepath")
                }

            Color.neutralBG
                .tabItem {
                    Label("Favoritos", systemImage: "suit.heart")
                }

            Color.neutralBG
                .tabItem {
                    Label("Notificações", systemImage: "bell")
                }

            Color.neutralBG
                .tabItem {
                    Label("Menu", systemImage: "line.3.horizontal")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
