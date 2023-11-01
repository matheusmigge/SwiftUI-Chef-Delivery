//
//  StoreListView.swift
//  ChefDelivery
//
//  Created by Migge on 20/10/23.
//

import SwiftUI

struct StoreListView: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Lojas")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 15)
            
            VStack (spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(store: store)
                    }                    
                }
            }
        }
        .foregroundColor(.black)
        .padding(20)
    }
}

struct StoreListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            StoreListView()
        }
    }
}
