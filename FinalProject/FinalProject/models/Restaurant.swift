//
//  Restaurant.swift
//  FinalProject
//
//  Created by MacBook` on 14/01/2021.
//

import Foundation

struct Restaurant: Identifiable, Hashable {
    let restaurantName: String
    let restaurantPic: [String]
    
    let id = UUID()
}

let restaurants = [
  Restaurant(restaurantName: "Ubon", restaurantPic: ["Pad Thai chicken", "Pineapple chicken", "Masaman bowl"]),
  Restaurant(restaurantName: "Melenzane", restaurantPic: ["Marge pizza", "Dolcezza", "Milly cake"]),
  Restaurant(restaurantName: "B+F", restaurantPic: ["Midnight", "Commando fries", "Buffalo shrimp"]),
  Restaurant(restaurantName: "Cheesecake", restaurantPic: ["Fried macaroni & cheese", "Fettuccine alfredo", "Buffalo chicken strips"]),
  Restaurant(restaurantName: "Kumar", restaurantPic: ["chicken Katsu", "chicken biryani", "Delhi volcano fries"]),
  Restaurant(restaurantName: "Over Jar", restaurantPic: ["Profiterole", "Kinder pizza", "Memories cake"]),
  Restaurant(restaurantName: "Dar Hamad", restaurantPic: ["Murabyan", "eggplant salad", "chicken majboos"])
  ]
