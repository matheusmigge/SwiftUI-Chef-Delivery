//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Migge on 01/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    
    
    var body: some View {
        
        VStack {
            ProductDetailHeaderView(product: product)
            
            Spacer()

            ProductDetailQuantityView()
            
            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[4].products[3])
    }
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            print("O botão foi pressionado")
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
                    .bold()
            }
            .padding(.horizontal,32)
            .padding(.vertical,16)
            .font(.title3)
            .background(Color.chefDeliveryRed)
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color.chefDeliveryRed.opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
}
