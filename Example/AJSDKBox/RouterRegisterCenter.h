//
//  RouterRegisterCenter.h
//  AJSDKBox_Example
//
//  Created by tonglin on 2021/4/13.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouterRegisterCenter : NSObject

// 注册
+ (void)registerAllControlls;
+ (void)registerWithPath:(NSString *)path;


// 注销
+ (void)deregisterAllControlls;
+ (void)deregisterWithPath:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
