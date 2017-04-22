//
//  AreaSelectTableViewDataSource.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class AreaSelectTableViewDataSource: NSObject {
    var areas: [GArea] = []
    
    func add(newAreas: [GArea]) {
        areas = newAreas
    }
}

// MARK:- UITableViewDataSource
extension AreaSelectTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return areas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AreaSelectTableViewCell.identifier,
                                                 for: indexPath) as! AreaSelectTableViewCell
        cell.area = areas[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}
