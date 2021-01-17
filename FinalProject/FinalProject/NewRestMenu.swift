//
//  NewRestMenu.swift
//  FinalProject
//
//  Created by MacBook` on 15/01/2021.
//

import SwiftUI

struct NewRestMenu: View {
    @State var restName = ""
    @State var cuisine = ""

    var body: some View {
        ZStack{
            
            Color(.systemGray5)
                .ignoresSafeArea()
                .blur(radius: 300)
            
        VStack{
            Spacer()
            Text("To add your restaurant please contact us by email")
                .font(.system(size: 30))
                .foregroundColor(.purple)
                .multilineTextAlignment(.center)
                .padding()
         
            Text("MenuWe@MW.com")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.purple)
                .padding()
            Spacer()
            
           
        }
        }
    }
}

struct NewRestMenu_Previews: PreviewProvider {
    static var previews: some View {
        NewRestMenu()
    }
}
