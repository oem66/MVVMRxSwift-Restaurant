//
//  RestaurantsListViewModel.swift
//  MVVMRxSwift Restaurant
//
//  Created by Omer Rahmanovic on 1/5/21.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) { // we are injecting restaurant service like this to ease unit testing later on
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { $0.map {
            RestaurantViewModel(restaurant: $0) } }
    }
}
