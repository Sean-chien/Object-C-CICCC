//
//  Greeter.m
//  Foodtruck
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void) greet {
    if ([self.delegate shouldSayHello]) {   // self -> get the object
        NSLog(@"Hello");
    } else {
        NSLog(@"....");
    }
}
@end
