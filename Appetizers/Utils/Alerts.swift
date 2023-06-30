//
//  Alerts.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import SwiftUI

struct Alerts {
    
    // MARK: ORDER
    static let orderPlaced = AlertItem(title: Text("Order Placed!"), message: Text("Your Order has been placed successfully!"), dismissButton: .default(Text("OK")))
    
    // MARK: API ERROR ALERTS
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("Oops! Something unexpected happened. If this persists, contact support."), dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("Oops! There some error with parsing the data. Please try again!"), dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Oops! There some error with parsing the response. Please try again!"), dismissButton: .default(Text("OK")))
    
    static let dataFetchError = AlertItem(title: Text("Server Error"), message: Text("Oops! There is some trouble contacting the server. Please check your internet connection and try again!"), dismissButton: .default(Text("OK")))
    
    // MARK: ACCOUNT DATA ALERTS
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please fill all the details in the form"), dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please enter correct email address"), dismissButton: .default(Text("OK")))
    
    static let dataSaveSuccess = AlertItem(title: Text("Saved Successfully!"), message: Text("Details saved Successfully!"), dismissButton: .default(Text("OK")))
    
    static let errorSavingData = AlertItem(title: Text("Error Saving Data"), message: Text("Something wrong while saving the data. Please try again!"), dismissButton: .default(Text("OK")))
    
    static let errorRetrievingData = AlertItem(title: Text("Error Retrieving Data"), message: Text("Something wrong while retrieving the data. Please try again!"), dismissButton: .default(Text("OK")))
}

