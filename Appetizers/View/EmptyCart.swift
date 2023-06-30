//
//  EmptyCart.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/26/23.
//

import SwiftUI

struct EmptyCart: View {
    
    let imageName: String
    let description: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.brandPrimary)
                
                Text(description)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
    }
}

struct EmptyCart_Previews: PreviewProvider {
    static var previews: some View {
        EmptyCart(imageName: "cart.badge.plus", description: "Sample Description that supports multine. \nSecond line starts here")
    }
}
