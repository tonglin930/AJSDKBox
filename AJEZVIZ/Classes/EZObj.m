//
//  AJEZObj.m
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import "EZObj.h"
#if __has_include("AJSDKBox-Swift.h")
#import "AJSDKBox-Swift.h"
#else
#import <AJSDKBox/AJSDKBox-Swift.h>
#endif

@interface EZObj()<DeviceStatus>

@property (nonatomic,copy) NSString *status;

@end


@implementation EZObj
//@synthesize _status;

- (void)updateStatus:(NSString *)status{
    _status = status;
}

- (NSString *)status{
    return _status;
}

- (NSString *)deviceNo{
    return @"C123456";
}

@end
