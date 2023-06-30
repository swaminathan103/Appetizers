//
//  AppetizerRemoteImageView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct AppetizerRemoteImageView: View {
    @StateObject var viewModel = AppetizerImageViewModel()
    let path: String
    
    var body: some View {
        viewModel.cellImage
            .resizable()
            .onAppear{
                viewModel.getImage(from: path)
            }
    }
}

struct AppetizerRemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerRemoteImageView(path: "")
    }
}
