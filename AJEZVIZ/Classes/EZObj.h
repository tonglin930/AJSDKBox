//
//  AJEZObj.h
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import <Foundation/Foundation.h>
@protocol DeviceStatus;

NS_ASSUME_NONNULL_BEGIN

@interface EZObj : NSObject<DeviceStatus>

@property (nonatomic,copy,readonly) NSString *deviceNo;
@property (nonatomic,copy,readonly) NSString *status;

- (void)updateStatus:(NSString *)status;

@end

NS_ASSUME_NONNULL_END
