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
                Image(store.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text(store.name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(store.category)
                        .font(.footnote)
                }
                
                Spacer()
            }
            .padding(.leading,15)
            .onTapGesture {
                print("Botão \(store.name) pressionado")
            }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: Store(id: 1, name: "Cabrão", image: "carbron-logo", category: "Comida mexicana"))
    }
}
