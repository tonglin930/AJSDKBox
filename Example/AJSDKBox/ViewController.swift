//
//  ViewController.swift
//  AJSDKBox
//
//  Created by keithmorning on 04/08/2021.
//  Copyright (c) 2021 keithmorning. All rights reserved.
//
import AJSDKBox
import UIKit
import AJSDKInterface

class ViewController: UIViewController {
    
    let sdkbox = AJSDKBox()
    var sdk1:AAJSDKMeathod?
    var sdk2:AAJSDKMeathod?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sdkbox = AJSDKBox()
        sdkbox.initService()
        
        sdk1 = sdkbox.sdk(identifer: AJSDKType.ezviz)
        sdk1?.sayHello()
        sdk1?.SDKCallBack = self
        
        
        sdk2 = sdkbox.sdk(identifer: AJSDKType.tuya)
        sdk2?.sayHello()
        sdk2?.SDKCallBack = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: AJSDKMeathodCallbck{
    func deviceStatusChange(status: DeviceStatus) {
        print("deivice status is \(status.status)")
    }
}

