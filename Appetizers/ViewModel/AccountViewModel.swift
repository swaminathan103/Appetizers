//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/26/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = Alerts.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = Alerts.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else {
            return
        }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = Alerts.dataSaveSuccess
        } catch {
            alertItem = Alerts.errorSavingData
        }
    }
    
    func getAccountData() {
        guard let userData = userData else {
            return
        }

        do {
            try user = JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = Alerts.errorRetrievingData
        }
    }
}
