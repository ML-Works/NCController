//
//  NSObject+MLWNCController.m
//  NCController
//
//  Created by Anton Bukov on 03.03.16.
//
//

#import <objc/runtime.h>
#import "NSObject+MLWNCController.h"

@implementation NSObject (MLWNCController)

- (MLWNCController *)NCController {
    MLWNCController *controller = objc_getAssociatedObject(self, @selector(NCController));
    if (controller == nil) {
        controller = [MLWNCController controller];
        self.NCController = controller;
    }
    return controller;
}

- (void)setNCController:(MLWNCController *)NCController {
    objc_setAssociatedObject(self, @selector(NCController), NCController, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
