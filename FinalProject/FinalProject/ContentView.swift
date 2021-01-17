//
//  ContentView.swift
//  FinalProject
//
//  Created by MacBook` on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
       
        NavigationView{
            ZStack{
            Color(.systemGray5)
              .ignoresSafeArea()
              .blur(radius: 300)
                
            VStack(alignment: .center){
                Image("menuwe_app")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .scaledToFit()
                
                Spacer()
                Spacer()
                
                HStack(alignment: .center){
                Text("MenuWe")
                    .font(.system(size: 60,weight: .light))
                    .frame(width: 500, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.purple)
                }
               
                Spacer()
                Spacer()
              
                NavigationLink(
                    destination: MainPage(),
                    label: {
                        ZStack(alignment: .center){
                            Capsule()
                                .foregroundColor(.purple)
                                .frame(width: 200, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("English")
                                .font(.system(size: 30, weight: .light))
                        }
                    })
                
                NavigationLink(
                    destination: ARMainPage(),
                    label: {
                        ZStack(alignment: .center){
                            Capsule()
                                .foregroundColor(.purple)
                                .frame(width: 200, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Arabic")
                                .font(.system(size: 30, weight: .light))
                        }
                    })
                
              Spacer()
               
            }.foregroundColor(.white)
           // .padding()
          
        }
        }
        .accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

   
