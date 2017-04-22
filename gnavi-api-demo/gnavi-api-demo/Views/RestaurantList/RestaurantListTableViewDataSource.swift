//
//  RestaurantListTableViewDataSource.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class RestaurantListTableViewDataSource: NSObject {
    var restaurants = Restaurants()
    
    func add(newRestaurants: Restaurants) {
        
        if restaurants.restaurant.count == 0 {
            restaurants = newRestaurants
        } else {
            restaurants.restaurant += newRestaurants.restaurant
        }
    }
}

// MARK:- UITableViewDataSource
extension RestaurantListTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.restaurant.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RestaurantListTableViewCell.identifier,
                                                 for: indexPath) as! RestaurantListTableViewCell
        cell.restaurant = restaurants.restaurant[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}
