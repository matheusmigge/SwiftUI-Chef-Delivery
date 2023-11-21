//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Migge on 13/11/23.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var productQty = 1
    
    var body: some View {
        VStack (spacing: 16) {
            Text("Quantidade")
                .bold()
                .font(.title3)
            
            HStack {
                Button {
                    if productQty > 1 {
                        productQty -= 1
                    }
                } label: {
                    ZStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.chefDeliveryRed)
                        Image(systemName: "minus")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                }
                
                Text("\(productQty)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQty += 1
                } label: {
                    ZStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.chefDeliveryRed)
                        Image(systemName: "plus")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView()
            .preferredColorScheme(.dark)
    }
}
