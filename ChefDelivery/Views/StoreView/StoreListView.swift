//
//  StoreListView.swift
//  ChefDelivery
//
//  Created by Migge on 20/10/23.
//

import SwiftUI

struct StoreListView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var ratingFilter = 0
    @State private var minDistanceFilter: Double = 0
    @State private var maxDistanceFilter: Double = 100
    
    var filteredStores: [Store] {
        return storesMock.filter { store in
            store.starsQty >= ratingFilter &&
            store.distanceToUser >= minDistanceFilter &&
            store.distanceToUser < maxDistanceFilter
        }
    }
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack {
                Text("Lojas")
                    .font(.title)
                    .foregroundColor(.primary)
                
                Spacer()
                
                HStack (spacing: 3) {
                    Menu("Estrelas") {
                        Button {
                            ratingFilter = 0
                        } label: {
                            HStack {
                                Text("Limpar filtro")
                                Image(systemName: "xmark")
                            }
                        }
                        
                        Divider()

                        ForEach(1...5, id: \.self) {rating in
                            Button {
                                ratingFilter = rating
                            } label: {
                                HStack {
                                    if rating == 1 {
                                        Text("\(rating) estrela ou mais")
                                    } else if rating == 5 {
                                        Text("\(rating) estrelas apenas")
                                    } else {
                                        Text("\(rating) estrelas ou mais")
                                    }
                                    
                                    Image(systemName: "star.fill")
                                }
                            }
                        }
                    }
                    .padding(5)
                    .foregroundColor(ratingFilter == 0 ? .primary : .white)
                    .background(ratingFilter == 0 ? Color.clear : Color.chefDeliveryRed)
                    .cornerRadius(10)
                    
                    Menu("Distância") {
                        Button {
                            minDistanceFilter = 0
                            maxDistanceFilter = 100
                        } label: {
                            HStack {
                                Text("Limpar filtro")
                                Image(systemName: "xmark")
                            }
                        }
                        
                        Divider()
                        
                        ForEach(Array(stride(from: 0, through: 20, by: 5)), id: \.self) { distanceIncrease in
                            Button {
                                minDistanceFilter = Double(distanceIncrease)
                                maxDistanceFilter = Double(distanceIncrease + 5)
                            } label: {
                                HStack {
                                    Text("De \(distanceIncrease) até \(distanceIncrease + 5) km")
                                    Image(systemName: "location.fill")
                                }
                            }
                        }
                    }
                    .padding(5)
                    .foregroundColor(maxDistanceFilter == 100 ? .primary : .white)
                    .background(maxDistanceFilter == 100 ? Color.clear : Color.chefDeliveryRed)
                    .cornerRadius(10)
                }
                .padding(2)
                .background(colorScheme == .light ? .white : .black)
                .cornerRadius(10)
                .shadow(color: .primary.opacity(0.6), radius: 2, x: 0, y: 0)
            }
            .padding(.trailing, 3)
            
            VStack (spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum loja encontrada para o(s) filtro(s) selecionado(s) :(")
                        .foregroundColor(.secondary)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 32)
                        .multilineTextAlignment(.center)


                } else {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StorePageView()
                                .environmentObject(store)
                        } label: {
                            StoreItemView(store: store)
                        }
                    }
                }
            }
        }
        .foregroundColor(.primary)
    }
}

struct StoreListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            StoreListView()
                .previewLayout(.sizeThatFits)
                .environmentObject(storesMock[0])
        }
    }
}
