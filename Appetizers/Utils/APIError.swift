//
//  APIError.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import Foundation

enum APIError: Error {
    case invalidURL, invalidData, invalidResponse, dataFetchError
}
