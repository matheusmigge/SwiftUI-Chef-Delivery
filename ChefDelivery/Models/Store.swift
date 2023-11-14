//
//  Store.swift
//  ChefDelivery
//
//  Created by Migge on 20/10/23.
//

import Foundation

class Store: Identifiable, ObservableObject {
    
    let id: Int
    let name: String
    let logo: String
    let foodCategory: String
    let headerImage: String
    let location: String
    let distanceToUser: Double
    let starsQty: Int
    let products: [Product]
    
    init(id: Int, name: String, logo: String, foodCategory: String, headerImage: String, location: String, distanceToUser: Double, starsQty: Int, products: [Product]) {
        
        self.id = id
        self.name = name
        self.logo = logo
        self.foodCategory = foodCategory
        self.headerImage = headerImage
        self.location = location
        self.distanceToUser = distanceToUser
        self.starsQty = starsQty
        self.products = products
    }
    
    var formattedDistanceToUser: String {
        return distanceToUser.formatNumber() + " km"
    }
}
