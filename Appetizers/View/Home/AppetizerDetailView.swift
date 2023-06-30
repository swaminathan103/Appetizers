//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var orders: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImageView(path: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(appetizer.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
                NutritionInfo(title: "Protein", value: "\(appetizer.protein) g")
            }
            
            Spacer()
            
            Button {
                orders.addItem(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to order")
            }
            .foregroundColor(.brandPrimary)
            .cornerRadius(.leastNonzeroMagnitude)
            .padding(.bottom, 20)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            DismissButton()
        }, alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: Mockdata.appts[0], isShowingDetail: .constant(false))
    }
}
