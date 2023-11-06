//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Migge on 01/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    @State private var productQty = 1
    
    var body: some View {
        VStack (spacing: 16) {
            VStack (alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top )
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            Spacer()

            VStack (spacing: 16) {
                Text("Quantidade")
                    .bold()
                    .font(.title3)
                
                HStack {
                    Button {
                        if productQty > 1 {
                            productQty -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 30))
                    }
                    
                    Text("\(productQty)")
                        .font(.title2)
                        .bold()
                    
                    Button {
                        productQty += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 30))
                    }

                }
            }
            
            Spacer()
            
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
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color.accentColor.opacity(0.5), radius: 10, x: 6, y: 8)
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
