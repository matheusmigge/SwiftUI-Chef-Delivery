//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Migge on 20/10/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: Store
    
    var body: some View {
        
        HStack {
            Image(store.logo)
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(store.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                HStack (spacing: 3) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 10)
                        .foregroundColor(.orange)
                        .shadow(radius: 2)
                    Text("\(store.starsQty)")
                        .foregroundColor(.orange)
                        .shadow(radius: 2)
                        .font(.system(size: 13))
                    Text(" • \(store.foodCategory) • \(store.formattedDistanceToUser)")
                        .font(.footnote)
                }
                
            }
            
            Spacer()
        }
        .padding(.leading,15)
    }
    
}


struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: storesMock[0])
            .padding(.horizontal)
    }
}
