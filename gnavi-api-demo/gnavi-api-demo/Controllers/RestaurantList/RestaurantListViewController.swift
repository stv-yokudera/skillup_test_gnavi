//
//  RestaurantListViewController.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class RestaurantListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let restSearchAPI = RestSearchAPI()
    fileprivate let dataSource = RestaurantListTableViewDataSource()
    
    fileprivate var restSearchStatus = RestSearchStatus.none
    var area = GArea()
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK:- file private
private extension RestaurantListViewController {
    
    // MARK:- Private
    func setup() {
        self.title = area.areaname_l
        
        // load data
        restSearchAPI.loadable = self
        if let areaCode = area.areacode_l {
            restSearchAPI.load(areacode_l: areaCode)
        }
        
        // setup tableview
        tableView.estimatedRowHeight = 154
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}

// MARK:- RestSearchLoadable
extension RestaurantListViewController: RestSearchLoadable {
    func setStatus(status: RestSearchStatus) {
        
        // Update status
        restSearchStatus = status
        showAlert(status: status)
        
        switch status {
        case .none:
            Logger.debug(message: "restSearchStatus: none")
            
        case .normal(let result):
            Logger.debug(message: "restSearchStatus: normal\n\(result)")
            
            restSearchAPI.update(total: result.total_hit_count)
            dataSource.add(newRestaurants: result)
            tableView.reloadData()
            
        case .noData:
            Logger.debug(message: "restSearchStatus: noData")
            
        case .offline:
            Logger.debug(message: "restSearchStatus: offline")
            
        case .error(let error):
            Logger.debug(message: "restSearchStatus: error\n\(error.localizedDescription)")
        }
    }
    
    private func showAlert(status: RestSearchStatus) {
        
        var message = ""
        
        switch status {
        case .none, .normal:
            return
        case .noData:
            message = NSLocalizedString("NoData", comment: "NoData")
        case .offline:
            message = NSLocalizedString("Offline", comment: "Offline")
        case .error(let error):
            message = error.localizedDescription
        }
        
        let alertController = UIAlertController(title: "",
                                      message: message,
                                      preferredStyle: .alert)
        alertController.addAction(
            UIAlertAction(title: "OK", style: .default, handler: nil)
        )
        
        self.present(alertController, animated: true, completion: nil)
        
    }
}

//MARK:- UITableViewDelegate
extension RestaurantListViewController: UITableViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        guard hasMoreRestaurantList() else { return }
        loadNextRestaurantList()
    }
    
    private func hasMoreRestaurantList() -> Bool {
        
        if tableView.contentOffset.y >= (tableView.contentSize.height - tableView.bounds.size.height) {
            
            if restSearchAPI.isLoading { return false }
            return restSearchAPI.hasMoreRequest()
        }
        return false
    }
    
    private func loadNextRestaurantList() {
        restSearchAPI.increment()
        restSearchAPI.loadable = self
        if let areaCode = area.areacode_l {
            restSearchAPI.load(areacode_l: areaCode)
        }
    }
}
