//
//  StoreDatailView.swift
//  ChefDelivery
//
//  Created by Migge on 29/10/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: Store
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            
            VStack  {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                
                VStack (alignment: .leading) {
                    HStack {
                        VStack (alignment: .leading) {
                            Text(store.name)
                                .font(.title)
                                .fontWeight(.bold)
                            
                        }
                        
                        
                        Spacer()
                        
                        Image(store.logo)
                    }
                    
                    HStack {
                        Text(store.location)
                            .font(.footnote)
                        
                        Spacer()
                        
                        ForEach(1...store.starsQty, id: \.self) { i in
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                .shadow(radius: 2)
                                .font(.caption)
                        }
                    }

                    
                    Text("Produtos")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                    
                    ForEach(store.products) { product in
                        HStack (spacing: 8){
                            VStack (alignment: .leading, spacing: 8){
                                
                                Text(product.name)
                                    .bold()
                                
                                Text(product.description)
                                    .foregroundColor(.black.opacity(0.5))
                                    
                                
                                Text("R$ \(product.price)")
                            }
                            
                            Spacer()
                            
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(12)
                                .frame(width: 120, height: 120)
                                .shadow(color: .black.opacity(0.5), radius: 20, x: 6, y: 8)
                        }
                        .padding(.vertical, 8)
                    }
                }
                .padding()
            }
            .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StoreDetailView(store: storesMock[4])
        }
        
    }
}
