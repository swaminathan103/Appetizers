//
//  ContentView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/21/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppetizerTabView()
        }
    }
}
