//
//  RouterRegisterCenter.m
//  AJSDKBox_Example
//
//  Created by tonglin on 2021/4/13.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

#import "RouterRegisterCenter.h"
#import "MGJRouter.h"
#import "RouterPathUrl.h"
#import "AJSDKBox_Example-Swift.h"
#import "DemoListViewController.h"
//#import <AJSDKBox/CTMediator.h>

@implementation RouterRegisterCenter


+ (void)registerAllControlls {
    
    
    [MGJRouter registerURLPattern:ROUTER_PATH_DEMOLIST toHandler:^(NSDictionary *routerParameters) {
        
//        [CTMediator sharedInstance];
        //
        DemoListViewController *vc = [[DemoListViewController alloc]init];
        
        // 参数
        NSMutableDictionary *data = [NSMutableDictionary dictionary];
        
        if (routerParameters[MGJRouterParameterUserInfo]) {
            [data setDictionary:routerParameters[MGJRouterParameterUserInfo]];
        }
        
        for (NSString *key in routerParameters.allKeys) {
            if (![key isEqualToString:MGJRouterParameterURL] &&
                ![key isEqualToString:MGJRouterParameterUserInfo] &&
                ![key isEqualToString:MGJRouterParameterCompletion]) {
                NSLog(@"GET方式传值%@",routerParameters);
                [data setObject:routerParameters[key] forKey:key];
            }
        }
        
        if (data != nil) {
            vc.data = data;
        }
        
        // 传 Controller
        void (^completion)(id result) = routerParameters[MGJRouterParameterCompletion];
        if (completion) {
            completion(vc);
        }
    }];
    
    [MGJRouter registerURLPattern:ROUTER_PATH_VIEW toHandler:^(NSDictionary *routerParameters) {
        
        //
        ViewController *vc = [[ViewController alloc]init];
        
        // 参数
        NSDictionary *data = routerParameters[MGJRouterParameterUserInfo];
        if (data != nil) {
            
        }
        
        // 传 Controller
        void (^completion)(id result) = routerParameters[MGJRouterParameterCompletion];
        if (completion) {
            completion(vc);
        }
    }];
    
    
    
    // 注册两个只会响应最后一个注册的
    [MGJRouter registerURLPattern:ROUTER_PATH_SEARCH toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameters1:%@",routerParameters);
    }];
    
    [MGJRouter registerURLPattern:ROUTER_PATH_SEARCH toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameters2:%@",routerParameters);
    }];
    
    
    
    [MGJRouter registerURLPattern:ROUTER_PATH_LOATION toHandler:^(NSDictionary *routerParameters) {
        
        //
        LocationParamaterViewController *vc = [[LocationParamaterViewController alloc]init];
        NSClassFromString(@"");
        // 参数
        NSMutableDictionary *data = [NSMutableDictionary dictionary];
        
        if (routerParameters[MGJRouterParameterUserInfo]) {
            [data setDictionary:routerParameters[MGJRouterParameterUserInfo]];
        }
        
        for (NSString *key in routerParameters.allKeys) {
            if (![key isEqualToString:MGJRouterParameterURL] &&
                ![key isEqualToString:MGJRouterParameterUserInfo] &&
                ![key isEqualToString:MGJRouterParameterCompletion]) {
                NSLog(@"GET方式传值%@",routerParameters);
                [data setObject:routerParameters[key] forKey:key];
            }
        }
        
        if (data != nil) {
            vc.data = data;
        }
        
        // 传 Controller
        void (^completion)(id result) = routerParameters[MGJRouterParameterCompletion];
        if (completion) {
            completion(vc);
        }
    }];
    
}

+ (void)registerWithPath:(NSString *)path {
    
    
    
}

+ (void)deregisterAllControlls {
    
    [MGJRouter deregisterURLPattern:ROUTER_PATH_SEARCH];
}

+ (void)deregisterWithPath:(NSString *)path {
    [MGJRouter deregisterURLPattern:path];
}

@end
