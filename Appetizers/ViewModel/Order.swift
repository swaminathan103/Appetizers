//
//  Order.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/26/23.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Float {
        items.reduce(0) { partialResult, item in
            partialResult + item.price
        }
    }
    
    func addItem(_ item: Appetizer) {
        items.append(item)
    }
    
    func removeItem(at offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
    
    func reset() {
        items = []
    }
}
