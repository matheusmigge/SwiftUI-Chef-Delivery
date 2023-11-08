//
//  Store.swift
//  ChefDelivery
//
//  Created by Migge on 20/10/23.
//

import Foundation

struct Store: Identifiable {
    
    let id: Int
    let name: String
    let logo: String
    let foodCategory: String
    let headerImage: String
    let location: String
    let distanceToUser: Double
    let starsQty: Int
    let products: [Product]
    
    var formattedDistanceToUser: String {
        return distanceToUser.formatNumber() + " km"
    }
}
