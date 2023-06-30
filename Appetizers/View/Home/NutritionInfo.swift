//
//  NutritionInfo.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .fontWeight(.medium)
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .italic()
        }
        .padding()
    }
}

struct NutritionInfo_Previews: PreviewProvider {
    static var previews: some View {
        NutritionInfo(title: "title", value: "value")
    }
}
