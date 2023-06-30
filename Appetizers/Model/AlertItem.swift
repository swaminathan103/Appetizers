//
//  AlertItem.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button?
}
