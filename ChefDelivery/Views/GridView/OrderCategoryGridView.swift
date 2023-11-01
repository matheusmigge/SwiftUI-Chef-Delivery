//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Migge on 17/10/23.
//

import SwiftUI

struct OrderCategoryGridView: View {
    
//    var gridLayout: [GridItem] {
//        return Array(repeating: GridItem(.flexible(),spacing: 10), count: 2)
//    }
    
// O código abaixo é uma alternativa ao de cima:
    var gridLayout: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        
        LazyHGrid(rows: gridLayout, spacing: 15) {
            ForEach(ordersMock) {orderItem in
                OrderCategoryView(orderCategory: orderItem)
            }
        }
        .frame(height: 200)
        .padding(.horizontal,15)
        .padding(.top, 15)
    }
}

struct OrderCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCategoryGridView()
    }
}
