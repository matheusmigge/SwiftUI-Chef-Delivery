//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Migge on 19/10/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    var body: some View {
        
        
        TabView {
            ForEach(0...carouselsMock.count-1, id: \.self) { index in
            CarouselItemView(banner: carouselsMock[index])
            
                .tabItem {
                    
                    Image(systemName: "\(index+1).circle")
                }
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
