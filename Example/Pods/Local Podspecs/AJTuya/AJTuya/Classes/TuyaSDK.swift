//
//  TuyaSDK.swift
//  AJTuya
//
//  Created by KeithXi on 2021/4/8.
//

import UIKit
import AJSDKInterface

class TuyaSDK {

    public weak var statusChange:AJSDKMeathodCallbck?
    
    
    public init() {
        let obj = TuyaObj()
        deviceChange(device: obj)
    }
    
    public func sayTuyaHello(parameter:String)  {
        print("say hello from tuya, parameter is \(parameter)")
    }
    
    func deviceChange(device:TuyaObj) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {[weak self] in
            self?.statusChange?.deviceStatusChange(status: device)
            if device.status == "online" {
                device.status = "offline"
            }else{
                device.status = "online"
            }
        }
    }

}
