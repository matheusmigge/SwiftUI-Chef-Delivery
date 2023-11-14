//
//  StoreDatailView.swift
//  ChefDelivery
//
//  Created by Migge on 29/10/23.
//

import SwiftUI

struct StorePageView: View {
    
    @EnvironmentObject var store: Store
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            VStack (alignment: .leading) {
                
                StorePageHeaderView()
                
                StorePageProductsView()
            }
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack (spacing: 4) {
                        Image(systemName: "cart")
                        
                        Text("Lojas")
                    }
                }
            }
        }
    }
}

struct StorePageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StorePageView()
                .environmentObject(storesMock[2])
        }
        
    }
}
