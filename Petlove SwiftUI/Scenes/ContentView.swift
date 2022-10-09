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
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            HomeView()
                .tabItem {
                    Label("Recorrências", systemImage: "arrow.2.circlepath")
                }

            Color.neutralBG
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Label("Favoritos", systemImage: "suit.heart")
                }

            Color.neutralBG
                .edgesIgnoringSafeArea([.top, .horizontal])
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Label("Notificações", systemImage: "bell")
                }

            Color.neutralBG
                .edgesIgnoringSafeArea([.top, .horizontal])
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
