//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Migge on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            NavigationBar()
            
            ScrollView(.vertical,showsIndicators: false) {
                
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    CarouselTabView()
                    StoreListView()
                }                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
