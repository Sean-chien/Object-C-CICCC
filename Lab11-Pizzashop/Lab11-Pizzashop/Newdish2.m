//
//  Newdish2.m
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "Newdish2.h"

@implementation Newdish2

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Thank you so much!!");
}
@end
