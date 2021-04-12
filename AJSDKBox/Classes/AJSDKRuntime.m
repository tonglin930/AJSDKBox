//
//  AJSDKRuntime.m
//  AJSDKBox
//
//  Created by KeithXi on 2021/4/9.
//

#import "AJSDKRuntime.h"
#import <objc/runtime.h>


@interface AJSDKRuntime()

@property (nonatomic,copy) NSDictionary* registerClass;


@end

@implementation AJSDKRuntime

- (void)run{
    self.registerClass = mapToRegister();
}

- (id<AAJSDKMeathod>)SDK:(NSString *)oem{
    Class class = [self.registerClass objectForKey:oem];
    return [[class alloc] init];
}

static NSDictionary *mapToRegister(){
    NSArray *classes = ServiceRegister();
    NSMutableDictionary *dict = [NSMutableDictionary new];
    for (Class class in classes){
        NSString *oem = [class oem];
        [dict setObject:class forKey:oem];
    }
    
    return dict.copy;
}

static NSArray* ServiceRegister(){
    
    NSMutableArray *conformingClasses = [NSMutableArray new];
    Class *classes = NULL;
    int numClasses = objc_getClassList(NULL, 0);
    if (numClasses > 0 ) {
        classes = (Class *)malloc(sizeof(Class) * numClasses);
        numClasses = objc_getClassList(classes, numClasses);
        for (int index = 0; index < numClasses; index++) {
            Class nextClass = classes[index];
            if (class_conformsToProtocol(nextClass,@protocol(AAJSDKMeathod))) {
                [conformingClasses addObject:nextClass];
            }
        }
        free(classes);
    }
    return conformingClasses;

}

@end
