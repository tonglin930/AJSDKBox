//
//  AJEZSDK.m
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import "AJEZSDK.h"
#import "EZVIZSDK.h"

@interface AJEZSDK()<EZVIZDataSource>

@property (nonatomic,strong) EZVIZSDK *sdk;

@end


@implementation AJEZSDK
@synthesize SDKCallBack;

- (instancetype)init {
    if(self = [super init]){
    }
    
    return self;
}


+ (NSString *)oem{
    return @"EZVIZ";
}

- (void)sayHello {
    self.sdk.statusChange = self;
    [self.sdk sayEZHelloWorld:@"from ajezsdk"];
}

- (EZVIZSDK *)sdk{
    if (!_sdk){
        _sdk = [EZVIZSDK new];
    }
    return _sdk;
}


#pragma mark -
- (void)DeviceStatusChange:(EZObj *)obj{
    [self.SDKCallBack deviceStatusChangeWithStatus:obj];
}




@end
