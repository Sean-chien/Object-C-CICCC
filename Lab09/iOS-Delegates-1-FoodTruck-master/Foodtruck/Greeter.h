//
//  Greeter.h
//  Foodtruck
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol GreeterDelegate
- (BOOL) shouldSayHello;
@end


@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

- (void) greet;

@end


