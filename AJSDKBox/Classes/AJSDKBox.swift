import Foundation


public class AJSDKType {
    public static let ezviz = "EZVIZ"
    public static let tuya  = "TUYA"
}

public class AJSDKBox:NSObject {
    
    let runtime = AJSDKRuntime()
    
    public func initService() {
        runtime.run()
    }
    
    public func sdk(identifer:String) -> AAJSDKMeathod {
       return runtime.sdk(identifer)
    }
    
}
