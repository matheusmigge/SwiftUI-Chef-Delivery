//
//  StorePageProductItemView.swift
//  ChefDelivery
//
//  Created by Migge on 13/11/23.
//

import SwiftUI

struct StorePageProductItemView: View {
    
    let product: Product
    
    var body: some View {
        HStack (spacing: 8){
            VStack (alignment: .leading, spacing: 8){
                
                Text(product.name)
                    .bold()
                
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                
                
                Text(product.formattedPrice)
            }
            .multilineTextAlignment(.leading)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.5), radius: 20, x: 6, y: 8)
        }
        .padding(.vertical, 8)
        .foregroundColor(.black)
    }
}

struct StorePageProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        StorePageProductItemView(product: storesMock[1].products[1])
            .padding()
    }
}
