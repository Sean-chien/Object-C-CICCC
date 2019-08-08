//
//  FrienflyGreetingDecider.h
//  Foodtruck
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

@interface FrienflyGreetingDecider : NSObject <GreeterDelegate>
- (BOOL) shouldSayHello;

@end


