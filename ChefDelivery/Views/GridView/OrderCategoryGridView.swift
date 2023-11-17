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
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        
        LazyHGrid(rows: gridLayout, spacing: 20) {
            ForEach(ordersMock) {orderItem in
                OrderCategoryView(orderCategory: orderItem)
            }
        }
        .padding(.top, 10)
        .frame(height: 200)
    }
}

struct OrderCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCategoryGridView()
    }
}
