//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Migge on 17/10/23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        
        HStack {
            
            Spacer()

            Button {
                print("Button tapped!")
            } label: {
                Text("Rua Vergueiro, 3185")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }.padding(.horizontal, 15)
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
