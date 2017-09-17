//
//  GTViewController.swift
//  iosapp
//
//  Created by lee on 2017. 9. 17..
//  Copyright © 2017년 lee. All rights reserved.
//

import UIKit

class GTViewController: UIViewController {
    @IBOutlet weak var dateTextField: UITextField!

    @IBAction func edit(_ sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        
        
        
        datePickerView.datePickerMode = UIDatePickerMode.date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), for: UIControlEvents.valueChanged)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    
    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = DateFormatter.Style.MediumStyle
//        dateFormatter.timeStyle = DateFormatter.Style.NoStyle
        dateFormatter.dateFormat = "yyyy년 MM월 dd일 HH시mm분"
        dateTextField.text = dateFormatter.string(from: sender.date)
        print(dateTextField.text!)
        dateTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
