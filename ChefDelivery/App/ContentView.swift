//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Migge on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 10) {
                        OrderCategoryGridView()
                        CarouselTabView()
                        StoreListView()
                    }
                }
            }
            .padding(.horizontal, 30)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
