//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import Foundation
import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    
    private static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private var cache = NSCache<NSString, UIImage>()
    
    func getAppetizers(completion: @escaping (Result<[Appetizer], APIError>) -> Void) {
        let endpoint = NetworkManager.baseURL + "appetizers"
        
        guard let url = URL(string: endpoint) else {
            completion(.failure(.invalidURL))
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if error != nil {
                completion(.failure(.dataFetchError))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            let decoder =  JSONDecoder()
            
            do {
                let result = try decoder.decode(AppetizerResponse.self, from: data)
                completion(.success(result.request))
            } catch  {
                completion(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
    func getImage(from endpoint: String, completion: @escaping (UIImage?) -> Void) {
        
        if let image = cache.object(forKey: endpoint as NSString) {
            completion(image)
            return
        }
        
        guard let url = URL(string: endpoint) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            self.cache.setObject(image, forKey: endpoint as NSString)
            
            completion(image)
        }
        
        task.resume()
    }
    
}
