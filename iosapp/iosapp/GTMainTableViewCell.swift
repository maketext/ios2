//
//  GTMainTableViewCell.swift
//  iosapp
//
//  Created by lee on 2017. 9. 16..
//  Copyright © 2017년 lee. All rights reserved.
//

import UIKit
import Alamofire

class GTMainTableViewCell: UITableViewCell {

/*    @IBAction func funcClick(_ sender: Any) {
        print("btn clicked")
        GTapiManager.manager.Todo { (JSON) in
            <#code#>
        }
        
        //        Alamofire.request("http://localhost:8080/dummy/apple", method:.get, parameters: [],encoding:JSONEncoding.default).responseJSON { response in }
    }*/
    
    @IBOutlet weak var lblA: UILabel!
    @IBOutlet weak var btnA: UIButton!
    var strLabelA:String? = nil
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblA.text=strLabelA
        
        self.btnA.backgroundColor = .blue
        self.btnA.layer.cornerRadius = 20
        self.btnA.layer.borderWidth = 5
        self.btnA.layer.borderColor = UIColor.gray.cgColor
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 //       Alamofire.request("http://httpbin.org/get")
        // Configure the view for the selected state
    }

}
