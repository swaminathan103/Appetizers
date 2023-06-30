//
//  OrderView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/21/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var orders: Order
    
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    // Using the For Each to support onDelete
                    List {
                        ForEach (orders.items) { appetizers in
                            AppetizerCell(appetizer: appetizers)
                        }
                        .onDelete { index in
                            orders.removeItem(at: index)
                        }
                        
                    }
                    .listStyle(.insetGrouped)
                    
                    Button {
                        alertItem = Alerts.orderPlaced
                        orders.reset()
                    } label: {
                        APButton(title: "$\(orders.totalPrice, specifier: "%.2f") - Place Order")
                            .padding()
                    }
                }
                
                if orders.items.isEmpty {
                    EmptyCart(imageName: "cart.badge.plus", description: "This space looks empty.\nPlease add some items to your order")
                }
            }
            .navigationTitle("Orders")
        }
        
        .alert(item: $alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
