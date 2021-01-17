//
//  RestList.swift
//  FinalProject
//
//  Created by MacBook` on 14/01/2021.
//

import SwiftUI

struct RestList: View {
    var body: some View {
       
                
            List(restaurants) { restaurant in
                NavigationLink(
                    destination: RestaurantDetailView(restaurant: restaurant),
                    label: {
                        RestaurantRow(restaurant: restaurant)
               })
                    
        }
    
            .navigationBarTitle("Restaurants' Menu")
          
    }
}

struct RestList_Previews: PreviewProvider {
    static var previews: some View {
        RestList()
    }
}

struct RestaurantRow: View {
    let restaurant: Restaurant
    
    var body: some View {
        ZStack{
            
        Image("mycolor")
            
        HStack (alignment: .center) {
            
            Image(restaurant.restaurantName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(restaurant.restaurantName)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        }
    }
}
