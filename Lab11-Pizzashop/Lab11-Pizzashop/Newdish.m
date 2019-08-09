//
//  Newdish.m
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "Newdish.h"
#import "Kitchen.h"
#import "Pizza.h"

@implementation Newdish

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}
@end
