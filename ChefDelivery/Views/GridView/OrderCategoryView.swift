//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Migge on 18/10/23.
//

import SwiftUI

struct OrderCategoryView: View {
    
    let orderCategory: OrderCategory
    
    var body: some View {
        VStack(spacing: 5) {
            Image(orderCategory.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            Text(orderCategory.name)
                .font(.system(size: 10))
        }.frame(width: 70, height: 100)
        
    }
}

struct OrderCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCategoryView(orderCategory: OrderCategory(id: 1, name: "Restaurantes", image: "hamburguer"))
    }
}
