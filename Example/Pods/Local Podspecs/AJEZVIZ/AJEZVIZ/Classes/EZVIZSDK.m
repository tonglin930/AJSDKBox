//
//  AJEZVIZSDK.m
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import "EZVIZSDK.h"

@implementation EZVIZSDK

- (instancetype)init{
    if(self = [super init]){
        
    }
    return self;
}

- (void)sayEZHelloWorld:(NSString *)paramer; {
    NSLog(@"hello world from AJEZViz and parameter is %@",paramer);
    
    EZObj *obj = [EZObj new];
    [obj updateStatus:@"online"];
    [self deviceChange:obj];

}

- (void)deviceChange:(EZObj *)obj{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if(self.statusChange && [self.statusChange respondsToSelector:@selector(DeviceStatusChange:)]){
            [self.statusChange DeviceStatusChange:obj];
        }

        if([obj.status isEqualToString: @"online"]){
            [obj updateStatus:@"offline"];
        }else{
            [obj updateStatus:@"online"];
        }
    });
}

@end
