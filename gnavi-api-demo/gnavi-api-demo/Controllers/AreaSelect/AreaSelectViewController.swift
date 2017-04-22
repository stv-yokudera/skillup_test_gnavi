//
//  AreaSelectViewController.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class AreaSelectViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let dataSource = AreaSelectTableViewDataSource()
    
    // MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK:- file private
private extension AreaSelectViewController {
    
    func setup() {
        self.title = NSLocalizedString("AreaSelectViewControllerTitle", comment: "NavigationBarTitle")
        
        // json mapping
        if let gArea = GAreasMapper.mapping(jsonFileName: "area") {
            dataSource.add(newAreas: gArea)
        }
        
        // setup tableview
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
}

// MARK:- UITableViewDelegate
extension AreaSelectViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "RestaurantListViewController", bundle: nil).instantiateInitialViewController() as! RestaurantListViewController
        vc.area = dataSource.areas[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
