//
//  StorePageHeaderView.swift
//  ChefDelivery
//
//  Created by Migge on 13/11/23.
//

import SwiftUI

struct StorePageHeaderView: View {
    
    var store: Store
    
    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            VStack {
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
                }
            }
            .padding()
        }
    }
    
    struct StorePageHeaderView_Previews: PreviewProvider {
        static var previews: some View {
            StorePageHeaderView(store: storesMock[0])
        }
    }
}
