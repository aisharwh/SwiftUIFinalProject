//
//  MenuDetailView.swift
//  FinalProject
//
//  Created by MacBook` on 14/01/2021.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    @State var number = 0
    
    var body: some View {
        
        VStack (alignment: .center){
            ZStack{
                Image (restaurant.restaurantName)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaledToFit()
                    .blur(radius: 20)
                    .ignoresSafeArea()
                
                Image(restaurant.restaurantName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }.frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
           
            ZStack{
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: 150, height: 50, alignment: .leading)
                    .cornerRadius(20)
                
            Text("CALL WAITER")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 20))
                
            }
            
            Spacer()
            
            List(restaurant.restaurantPic, id: \.self) { (rs: String) in
                HStack{
                    Image(rs)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Stepper("\((rs))",value: $number, in: 0...10)
                    Text("\(number)")
                }
                
        }
            
            
            Spacer()
            
            NavigationLink(
                destination: MenuCheckOut(restaurant: restaurant),
                label: {
                    Text("Next")
                       .foregroundColor(.white)
                       .font(.system(size: 25))
                       .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                       .padding(.vertical,10)
                       .padding(.horizontal, 20)
                       .background(Color.purple)
                       .clipShape(Capsule())
                })
            Spacer()
            
        }
    }
    
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: restaurants[0])
    }
}



