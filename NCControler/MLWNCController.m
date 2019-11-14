//
//  MLWNCController.m
//  MLWNCController
//
//  Created by Anton Bukov on 26.01.16.
//
//

#import "MLWNCController.h"

@interface MLWNCController ()

@property (strong, nonatomic) NSMutableDictionary<NSString *, id> *observers;

@end

@implementation MLWNCController

- (NSMutableDictionary *)observers
{
    if (_observers == nil) {
        _observers = [NSMutableDictionary new];
    }
    return _observers;
}

+ (instancetype)controller
{
    return [[self alloc] init];
}

- (void)dealloc
{
    [self removeAllObservers];
}

- (void)addObserverForName:(NSString *)name
                    object:(id)object
                     queue:(NSOperationQueue *)queue
                usingBlock:(void (^)(NSNotification *note))block
{
    id observer = [[NSNotificationCenter defaultCenter] addObserverForName:name
                                                                    object:object
                                                                     queue:queue
                                                                usingBlock:block];
    self.observers[name] = observer;
}

- (void)removeObserverForName:(NSString *)name
{
    [[NSNotificationCenter defaultCenter] removeObserver:self.observers[name]];
    [self.observers removeObjectForKey:name];
}

- (void)removeAllObservers
{
    for (id observer in self.observers.allValues) {
        [[NSNotificationCenter defaultCenter] removeObserver:observer];
    }
    self.observers = nil;
}

@end
