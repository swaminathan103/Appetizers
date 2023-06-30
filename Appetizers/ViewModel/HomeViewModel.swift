//
//  HomeViewModel.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                        
                    case .invalidURL:
                        alertItem = Alerts.invalidURL
                    case .invalidData:
                        alertItem = Alerts.invalidData
                    case .invalidResponse:
                        alertItem = Alerts.invalidResponse
                    case .dataFetchError:
                        alertItem = Alerts.dataFetchError
                    }
                }
            }
        }
    }
}
