import Foundation

@objc
public protocol DeviceStatus{
    var deviceNo:String { get }
    var status:String { get }
}

@objc
public protocol AJSDKMeathodCallbck {
    func deviceStatusChange(status:DeviceStatus)
}

@objc
public protocol AAJSDKMeathod {
    weak var SDKCallBack:AJSDKMeathodCallbck? {get set}
    func sayHello()
    static func oem()->String
}



