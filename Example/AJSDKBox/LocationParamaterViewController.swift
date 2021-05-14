//
//  LocationParamaterViewController.swift
//  AJSDKBox_Example
//
//  Created by tonglin on 2021/4/14.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit


class LocationParamaterViewController: UIViewController {

    
    @objc var data:[String:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "LocationParamaterViewController";
        self.view.backgroundColor = UIColor.white
        
        if data != nil {
            let textView = UITextView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
            view.addSubview(textView)
            
            guard let jsonData = try? JSONSerialization.data(withJSONObject: data!, options: .prettyPrinted) else {
                    return
                }
            
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                    return
                }
            
            textView.text = jsonString
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
