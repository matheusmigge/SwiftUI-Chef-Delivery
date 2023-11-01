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
                
                VStack(alignment: .leading) {
                    Text(store.name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(store.foodCategory)
                        .font(.footnote)
                }
                
                Spacer()
            }
            .padding(.leading,15)
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: storesMock[0])
    }
}
