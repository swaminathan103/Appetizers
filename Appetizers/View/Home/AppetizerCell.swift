//
//  AppetizerCell.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct AppetizerCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImageView(path: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCell(appetizer: Mockdata.appts[0])
    }
}
