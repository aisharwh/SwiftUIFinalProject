//
//  MenuCheckOut.swift
//  FinalProject
//
//  Created by MacBook` on 14/01/2021.
//

import SwiftUI

struct MenuCheckOut: View {
    let restaurant: Restaurant
    @State var Firstname = ""
    @State var Secondname = ""
    @State var phone = ""
    @State var tableNo = ""
  
    var body: some View {
        ZStack{
          
            Color(.systemGray5)
                .ignoresSafeArea()
                .blur(radius: 300)
            
        VStack (alignment: .center){

            TextField("First name", text: $Firstname).padding()
            TextField("Second name", text: $Firstname).padding()
            TextField("Phone number (optional)", text: $phone).padding()
            TextField("Table number", text: $tableNo).padding()
          
            //order summary + total
                
            Spacer()
            HStack{
            ZStack{
                Capsule()
                    .foregroundColor(.purple)
                    .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("KNET")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .light))
            }
           
            ZStack{
                Capsule()
                    .foregroundColor(.purple)
                    .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Cash")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .light))
            }
            }.padding()
        
            Spacer()
        }.foregroundColor(.black)
                
        
        }
    }
    
}

struct MenuCheckOut_Previews: PreviewProvider {
    static var previews: some View {
        MenuCheckOut(restaurant: restaurants[0])
    }
}
