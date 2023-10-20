//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Migge on 19/10/23.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: Banner
    
    var body: some View {
        Image(banner.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)

    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(banner: Banner(id: 3, image: "pokes-banner"))
    }
}
