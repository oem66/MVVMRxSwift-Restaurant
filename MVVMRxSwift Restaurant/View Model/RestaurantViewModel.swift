//
//  RestaurantViewModel.swift
//  MVVMRxSwift Restaurant
//
//  Created by Omer Rahmanovic on 1/5/21.
//

import Foundation

struct RestaurantViewModel {
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
