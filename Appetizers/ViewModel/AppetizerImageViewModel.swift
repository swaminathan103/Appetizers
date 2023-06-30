//
//  AppetizerImageViewModel.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

final class AppetizerImageViewModel: ObservableObject {
    @Published var image: Image?
    
    var cellImage: Image {
        return image ?? Image("food-placeholder")
    }
    
    func getImage(from path: String) {
        NetworkManager.shared.getImage(from: path) { image in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: image)
            }
        }
    }
}
