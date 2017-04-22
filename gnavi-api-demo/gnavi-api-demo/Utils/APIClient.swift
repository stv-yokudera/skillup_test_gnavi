//
//  APIClient.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/03/18.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Alamofire_SwiftyJSON

enum Result<VALUE> {
    case Success((VALUE, Int?))
    case Failure((Error, Int?))
}

final class APIClient: DataRequest {
    
    /// 端末の通信状態を取得
    ///
    /// - Returns: true: オンライン, false: オフライン
    static func isOnline() -> Bool {
        
        if let reachabilityManager = NetworkReachabilityManager() {
            reachabilityManager.startListening()
            return reachabilityManager.isReachable
        }
        return false
    }
    
    /// API Request
    static func request(router: Router,
                        completionHandler: @escaping (Result<JSON>) -> () = {_ in}) {
        
        Alamofire.request(router).responseSwiftyJSON { (response) in
            
            let statusCode = response.response?.statusCode
            Logger.info(message: "HTTP status code: \(statusCode)")
            
            switch response.result {
                
            case .success(let value):
                completionHandler(Result.Success((value, statusCode)))
                return
                
            case .failure:
                if let error = response.result.error {
                    completionHandler(Result.Failure((error, statusCode)))
                    return
                }
            }
        }
    }
}
