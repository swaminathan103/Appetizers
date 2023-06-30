//
//  Appetizer.swift
//  Appetizers
//
//  Created by Swaminathan Venkataraman on 6/22/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let name: String
    let description: String
    let id: Int
    let imageURL: String
    let carbs: Float
    let calories: Int
    let price: Float
    let protein: Float
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Mockdata {

    static let appts = [
        Appetizer(
            name: "Asian Flank Steak",
            description: "This perfectly thin cut just melts in your mouth.",
            id: 1,
            imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
            carbs: 0,
            calories: 300,
            price: 8.99,
            protein: 14
        ),
        Appetizer(
            name: "Asian Flank Steak",
            description: "This perfectly thin cut just melts in your mouth.",
            id: 1,
            imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
            carbs: 0,
            calories: 300,
            price: 8.99,
            protein: 14
        ),
        Appetizer(
            name: "Asian Flank Steak",
            description: "This perfectly thin cut just melts in your mouth.",
            id: 1,
            imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
            carbs: 0,
            calories: 300,
            price: 8.99,
            protein: 14
        ),
        Appetizer(
            name: "Asian Flank Steak",
            description: "This perfectly thin cut just melts in your mouth.",
            id: 1,
            imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
            carbs: 0,
            calories: 300,
            price: 8.99,
            protein: 14
        ),
        Appetizer(
            name: "Asian Flank Steak",
            description: "This perfectly thin cut just melts in your mouth.",
            id: 1,
            imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
            carbs: 0,
            calories: 300,
            price: 8.99,
            protein: 14
        ),

    ]

}
