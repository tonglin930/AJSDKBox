#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AJSDKRuntime.h"
#import "CTMediator.h"
#import "AJEZSDK.h"
#import "EZObj.h"
#import "EZVIZSDK.h"

FOUNDATION_EXPORT double AJSDKBoxVersionNumber;
FOUNDATION_EXPORT const unsigned char AJSDKBoxVersionString[];

