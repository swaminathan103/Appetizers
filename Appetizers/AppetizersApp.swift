//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/21/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    let order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
