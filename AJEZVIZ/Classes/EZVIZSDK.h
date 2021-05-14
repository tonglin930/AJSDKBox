//
//  AJEZVIZSDK.h
//  AJEZVIZ
//
//  Created by KeithXi on 2021/4/8.
//

#import <Foundation/Foundation.h>
#import "EZObj.h"

NS_ASSUME_NONNULL_BEGIN

@protocol EZVIZDataSource <NSObject>

- (void)DeviceStatusChange:(EZObj *)obj;

@end

@interface EZVIZSDK : NSObject

@property (nonatomic,weak) id<EZVIZDataSource> statusChange;

- (void)sayEZHelloWorld:(NSString *)paramer;

@end

NS_ASSUME_NONNULL_END
