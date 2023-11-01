//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Migge on 31/10/23.
//

import Foundation

struct Product: Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
}
