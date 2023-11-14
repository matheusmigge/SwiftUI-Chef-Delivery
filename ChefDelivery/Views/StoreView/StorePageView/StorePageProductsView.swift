//
//  StorePageProductsView.swift
//  ChefDelivery
//
//  Created by Migge on 13/11/23.
//

import SwiftUI

struct StorePageProductsView: View {
    
    @EnvironmentObject var store: Store
    @State private var selectedProduct: Product?
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding(.vertical, 10)
            
            ForEach(store.products) { product in
                
                Button {
                    selectedProduct = product
                } label: {
                    StorePageProductItemView(product: product)
                }
            }
            
        }
        .padding()
        
        .sheet(item: $selectedProduct) { product in
            ProductDetailView(product: product)
        }    }
}

struct StorePageProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StorePageProductsView()
            .environmentObject(storesMock[3])
    }
}
