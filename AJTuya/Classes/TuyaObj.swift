//
//  TuyaObj.swift
//  AJTuya
//
//  Created by KeithXi on 2021/4/8.
//

import UIKit
//import AJSDKInterface

public class TuyaObj: NSObject,DeviceStatus {
    
    public private(set) var deviceNo: String = "D123456"
    public internal(set) var status:String = "online"
    
}
