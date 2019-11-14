//
//  MLWNCController.h
//  MLWNCController
//
//  Created by Anton Bukov on 26.01.16.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MLWNCController : NSObject

+ (instancetype)controller;

- (void)addObserverForName:(NSString *)name
                    object:(nullable id)object
                     queue:(nullable NSOperationQueue *)queue
                usingBlock:(void (^)(NSNotification *note))block;

- (void)removeObserverForName:(NSString *)name;
- (void)removeAllObservers;

@end

NS_ASSUME_NONNULL_END
