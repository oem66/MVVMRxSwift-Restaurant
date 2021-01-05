//
//  RestaurantService.swift
//  MVVMRxSwift Restaurant
//
//  Created by Omer Rahmanovic on 1/5/21.
//

import Foundation
import RxSwift

protocol RestaurantServiceProtocol {
    func fetchRestaurants() -> Observable<[Restaurant]>
}

class RestaurantService: RestaurantServiceProtocol {
    
    func fetchRestaurants() -> Observable<[Restaurant]> {
        return Observable.create { (observer) -> Disposable in
            guard let path = Bundle.main.path(forResource: "restaurants", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create { }
            }
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(restaurants)
            } catch(let error) {
                observer.onError(error)
            }
            return Disposables.create { }
        }
    }
}
