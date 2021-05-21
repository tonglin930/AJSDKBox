//
//  AJTuyaSDK.swift
//  AJTuya
//
//  Created by KeithXi on 2021/4/8.
//

import Foundation
import AJSDKBox

@objcMembers
public class AJTuyaSDK:NSObject,AAJSDKMeathod,AAJSDKMeathod222 {
    public var SDKCallBack: AJSDKMeathodCallbck?
    
    public func sayHello() {
        print("tuya say hello")
    }
    
    public static func oem() -> String {
        return "TUYA"
    }
    

    
}
