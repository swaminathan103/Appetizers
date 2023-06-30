//
//  HomeView.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/21/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .disabled(viewModel.isShowingDetail)
                .navigationTitle("Appetizers")
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            // Loading indicator should always be the top most view
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
