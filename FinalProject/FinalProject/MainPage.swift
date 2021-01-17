//
//  MainPage.swift
//  FinalProject
//
//  Created by MacBook` on 15/01/2021.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ZStack{
            
            Color(.systemGray5)
                .ignoresSafeArea()
            .blur(radius: 300)
                
        VStack{
            HStack{
                Spacer()
            NavigationLink(
                destination: NewRestMenu(),
                label: {
                   AddNewMenu()
                })
            }.padding()
            
            Spacer()
            
        NavigationLink(
            destination: RestList(),
            label: {
                MenuButton()
            })
            
            Spacer()
        
        }
        }

    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

struct MenuButton : View {
    var body: some View {
      
        ZStack(alignment: .center){
            Group{
            Circle()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.purple)
                
            Text("View \n Menu")
                .font(.system(size: 40, weight: .light, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            }
        }
      

    }
}

struct AddNewMenu: View {
var body: some View {
  
    ZStack{
        Group{
        Circle()
            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.purple)
            
            Image(systemName: "plus")
            .font(.system(size: 40, weight: .light, design: .rounded))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
        }
    }
  

}
}
