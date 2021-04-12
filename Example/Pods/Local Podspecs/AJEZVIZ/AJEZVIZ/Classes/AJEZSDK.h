//
//  AJEZSDK.h
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import <Foundation/Foundation.h>
@import AJSDKInterface;
NS_ASSUME_NONNULL_BEGIN

@interface AJEZSDK : NSObject<AAJSDKMeathod>

@property (nonatomic,weak) id<AJSDKMeathodCallbck> SDKCallBack;

@end

NS_ASSUME_NONNULL_END
