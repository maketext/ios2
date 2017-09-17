//
//  GTapiManager.swift
//  iosapp
//
//  Created by lee on 2017. 9. 17..
//  Copyright © 2017년 lee. All rights reserved.
//

import Foundation
import Alamofire

class GTapiManager {
    func Todo(completion:@escaping ([String:String]) -> Void) {
        let url:String = "http://localhost:8080/dummy/apple"
        Alamofire.request(url).responseJSON { response in
            print(response)
            
            let result = response.result.value
            let JSON = result as! [String:String]
            print(JSON["aaa"]!)
            completion(JSON)
        }
    }
    static let manager = GTapiManager()
}
