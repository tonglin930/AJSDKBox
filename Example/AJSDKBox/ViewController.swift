//
//  ViewController.swift
//  AJSDKBox
//
//  Created by keithmorning on 04/08/2021.
//  Copyright (c) 2021 keithmorning. All rights reserved.
//
import AJSDKBox
import UIKit
import AJSDKBox

class ViewController: UIViewController {
    
    let sdkbox = AJSDKBox()
    var sdk1:AAJSDKMeathod?
    var sdk2:AAJSDKMeathod?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "ViewController";
        
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

    @IBAction func jumpToVC(_ sender: Any) {
        
        MGJRouter.openURL(ROUTER_PATH_DEMOLIST, withUserInfo: nil) {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
            
        }
    }
    
    
    @IBAction func jumpToVC2(_ sender: Any) {
        
        MGJRouter.openURL(ROUTER_PATH_DEMOLIST, withUserInfo: ["userId":"9999"]) {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
    @IBAction func getJumpToVC(_ sender: Any) {
        
        MGJRouter.openURL(ROUTER_PATH_DEMOLIST + "?color=red") {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
        }
        
    }
    
    
    
    @IBAction func getAndUserInfoJumpToVC(_ sender: Any) {
        
        MGJRouter.openURL(ROUTER_PATH_DEMOLIST + "?color=red", withUserInfo: ["userId":"9999"]) {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
        }
        
    }
    
    
    @IBAction func locationActiion(_ sender: Any) {
        
        MGJRouter.openURL(MGJRouter.generateURL(withPattern: ROUTER_PATH_LOATION, parameters: ["car","2"])) {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
        }
        
    }
    @IBAction func locatiionAndGetAction(_ sender: Any) {
        
        MGJRouter.openURL(MGJRouter.generateURL(withPattern: ROUTER_PATH_LOATION + "?color=red&&name=location", parameters: ["car","1"])) {[weak self] (vc) in
            if let controller:UIViewController = vc as? UIViewController {
                self?.navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
    
    
    
    
    
    
    @IBAction func searchAction(_ sender: Any) {
        
        MGJRouter.openURL(MGJRouter.generateURL(withPattern: ROUTER_PATH_SEARCH, parameters: ["car"]))
    }
    @IBAction func deregisterAction(_ sender: Any) {
        
        RouterRegisterCenter.deregisterAllControlls()
    }
    
    
}

extension ViewController: AJSDKMeathodCallbck{
    func deviceStatusChange(status: DeviceStatus) {
        print("deivice status is \(status.status)")
    }
}

