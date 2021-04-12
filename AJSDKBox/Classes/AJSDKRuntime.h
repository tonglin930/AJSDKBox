//
//  AJSDKRuntime.h
//  AJSDKBox
//
//  Created by KeithXi on 2021/4/9.
//

#import <Foundation/Foundation.h>
@import AJSDKInterface;

NS_ASSUME_NONNULL_BEGIN

@interface AJSDKRuntime : NSObject

- (void)run;

- (id<AAJSDKMeathod>)SDK:(NSString *)oem;

@end

NS_ASSUME_NONNULL_END
