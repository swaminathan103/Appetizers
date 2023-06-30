//
//  LoadingView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(uiColor: .systemBackground)
            ProgressView()
                .progressViewStyle(.circular)
                .scaleEffect(2)
                .tint(.brandPrimary)
        }
    }
}
